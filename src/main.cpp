//****************************************************
// Starter code for assignment #1.  It is provided to
// help get you started, but you are not obligated to
// use this starter code.
//****************************************************

#include <vector>
#include <iostream>
#include <fstream>
#include <cmath>
#include <stdio.h>
#include <string.h>

//include header file for glfw library so that we can use OpenGL
#include <GLFW/glfw3.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
//vector library
#include "smVector.hpp"

#ifdef _WIN32
static DWORD lastTime;
#else
static struct timeval lastTime;
#endif

//#define PI 3.14159265 // Should be used from mathlib
#define PI M_PI // From mathlib

using namespace std;

//****************************************************
// Global Variables
// Generally speaking, global variables should be
// avoided, but for this small assignment we'll make
// and exception.
//****************************************************

GLdouble Translation[3] = {0, 0, 0};
bool Auto_strech = false;
int Width_global = 400;
int Height_global = 400;

int SizeX_saved_global;
int SizeY_saved_global;

int PosX_saved_global;
int PosY_saved_global;

const GLFWvidmode *VideoMode_global = NULL;

double ***cmd = (double ***)calloc(1, sizeof(double **));
double **directional_sources;
double **point_sources;

double *dl;
double *I_d;
double *pl;
double *I_p;

double *ka;
double *kd;
double *ks;

// exponent
double *sp_coef;
double *spu;
double *spv;
double *a_sm;

//****************************************************
// Simple init function
//****************************************************

void initializeRendering()
{
    glfwInit();
}

//****************************************************
// A routine to set a pixel by drawing a GL point.  This is not a
// general purpose routine as it assumes a lot of stuff specific to
// this example.
//****************************************************

void setPixel(double x, double y, GLdouble r, GLdouble g, GLdouble b)
{
    glColor3f(r, g, b);
    glVertex2f(x + 0.5, y + 0.5);
    // The 0.5 is to target pixel centers
    // Note that some OpenGL implementations have created gaps in the past.
}

//****************************************************
// Keyboard inputs
//****************************************************

static void key_callback(GLFWwindow *window, int key, int scancode, int action, int modirectional_sources)
{
    switch (key)
    {

        // Hint on making up/down left/right work: the variable Translation [0] and [1].

    case GLFW_KEY_ESCAPE:
    case GLFW_KEY_Q:
        glfwSetWindowShouldClose(window, GLFW_TRUE);
#ifdef DEBUG
        std::cout << "ESC or Q pressed. Exiting" << std::endl;
#endif
        break;
    case GLFW_KEY_LEFT:
#ifdef DEBUG
        std::cout << "Left Key pressed" << std::endl;
#endif
        if (action)
            Translation[0] -= 0.01f * Width_global;
        break;
        break;
    case GLFW_KEY_RIGHT:
#ifdef DEBUG
        std::cout << "Right Key pressed" << std::endl;
#endif
        if (action)
            Translation[0] += 0.01f * Width_global;
        break;
        break;
    case GLFW_KEY_UP:
#ifdef DEBUG
        std::cout << "Up Key pressed" << std::endl;
#endif
        if (action)
            Translation[1] += 0.01f * Height_global;
        break;
        break;
    case GLFW_KEY_DOWN:
#ifdef DEBUG
        std::cout << "Down Key pressed" << std::endl;
#endif
        if (action)
            Translation[1] -= 0.01f * Height_global;
        break;
        break;
    case GLFW_KEY_F:
#ifdef DEBUG
        std::cout << "F Key pressed" << std::endl;
#endif
        if (action)
        {
            Auto_strech = !Auto_strech;
            if (Auto_strech)
            {
                glfwGetWindowPos(window, &PosX_saved_global, &PosY_saved_global);
                glfwGetWindowSize(window, &SizeX_saved_global, &SizeY_saved_global);
                glfwSetWindowSize(window, VideoMode_global->width, VideoMode_global->height);
                glfwSetWindowPos(window, 0, 0);
            }
            else
            {
                glfwSetWindowSize(window, SizeX_saved_global, SizeY_saved_global);
                glfwSetWindowPos(window, PosX_saved_global, PosY_saved_global);
            }
        }
        break;
    case GLFW_KEY_SPACE:
#ifdef DEBUG
        std::cout << "Space Key pressed" << std::endl;
#endif
        break;
    default:
        break;
    }
}
double max(double a, double b){return (a<b)? b:a;}

//****************************************************
// compute component vectors
//****************************************************

SmVector3 ambient(double *ka, double *I)
{
    SmVector3 result(ka[0] * I[0],ka[1] * I[1],ka[2] * I[2]);
    return result;
}

SmVector3 diffuse(double *kd, double *I, SmVector3 nl, SmVector3 nn)
{
    double m = max(dot(nl, nn), 0);
    SmVector3 result(kd[0] * I[0] * m,kd[1] * I[1] * m,kd[2] * I[2] * m);
    return result;
}

SmVector3 specular(double *ks, double *I, SmVector3 nl, SmVector3 nn, SmVector3 nv, double *sp_coef)
{
    SmVector3 nr = nl * (-1) + (nn * (2 * dot(nl, nn)));
    normalize(nr);
    double m_p = pow(max(dot(nr, nv), 0), sp_coef[0]);
    SmVector3 result(ks[0] * I[0] * m_p, ks[1] * I[1] * m_p, ks[2] * I[2] * m_p);
    return result;
}

SmVector3 asm_diff(double *kd, double *ks, SmVector3 nl, SmVector3 nn, SmVector3 nv, double *I)
{
    double temp1 = 28 / (23 * PI);
    double temp2 = (1 - pow((1 - dot(nn, nv) / 2), 5)) * (1 - pow((1 - dot(nn, nl) / 2), 5));
    SmVector3 f(kd[0] * (1 - ks[0]), kd[1] * (1 - ks[1]), kd[2] * (1 - ks[2]));
    SmVector3 result(temp1 * temp2 * f[0] * I[0], temp1 * temp2 * f[1] * I[1], temp1 * temp2 * f[2] * I[2]);
    return result;
}

SmVector3 asm_spec(double *ks, SmVector3 nl, SmVector3 nn, SmVector3 nv, double *spu, double *spv, SmVector3 h, SmVector3 U, SmVector3 V, double *I)
{
    double p = (spu[0] * pow(dot(h, U), 2) + spv[0] * pow(dot(h, V), 2)) / (1 - pow(dot(h, nn), 2));

    double temp1 = sqrt((spu[0] + 1) * (spv[0] + 1)) / (8 * PI);

    double temp2 = (pow(dot(nn, h), p)) / (dot(h, nv) * max(dot(nn, nv), dot(nn, nl)));

    SmVector3 f(ks[0] + (1 - ks[0]) * pow((1 - dot(h, nv)), 5), ks[1] + (1 - ks[1]) * pow((1 - dot(h, nv)), 5), ks[2] + (1 - ks[2]) * pow((1 - dot(h, nv)), 5));
    SmVector3 result(temp1 * temp2 * f[0] * I[0], temp1 * temp2 * f[1] * I[1], temp1 * temp2 * f[2] * I[2]);
    return result;
}

//****************************************************
// Draw a filled circle.
//****************************************************

void drawCircle(double centerX, double centerY, double radius)
{
    // Draw inner circle
    glBegin(GL_POINTS);

    // We could eliminate wasted work by only looping over the pixels
    // inside the sphere's radius.  But the example is more clear this
    // way.  In general drawing an object by loopig over the whole
    // screen is wasteful.

    int minI = max(0, (int)floor(centerX - radius));
    int maxI = min(Width_global - 1, (int)ceil(centerX + radius));

    int minJ = max(0, (int)floor(centerY - radius));
    int maxJ = min(Height_global - 1, (int)ceil(centerY + radius));

    SmVector3 view_v(0, 0, 1);

    for (int i = 0; i < Width_global; i++)
    {
        for (int j = 0; j < Height_global; j++)
        {
            double x = (i + 0.5 - centerX);
            double y = (j + 0.5 - centerY);

            double dist = sqrt(x * x + y * y);

            if (dist <= radius)
            {
                double z = sqrt(radius * radius - dist * dist);

                SmVector3 temp_v(x, y, z);

                normalize(temp_v);
                SmVector3 normal_v = temp_v;
                SmVector3 nv_v = view_v;
                normalize(nv_v);

                SmVector3 y_v(0,1,0);
                SmVector3 V_v = y +  (normal_v * (dot(normal_v, y_v)* (-1)));
                normalize(V_v);

                SmVector3 U_v = cross(V_v, normal_v);
                normalize(U_v);

                // default rgb should be (0, 0, 0);
                SmVector3 rgb1_v(0,0,0);
                SmVector3 rgb2_v(0,0,0);

                //if there are multiple directional sources
                if (directional_sources)
                {
                    int i = 0;
                    while (directional_sources[i])
                    {
                        dl = &(directional_sources[i][0]);
                        I_d = &(directional_sources[i][3]);
                        SmVector3 ndl_v(dl[0] *(-1), dl[1]*(-1), dl[2]*(-1));
                        normalize(ndl_v);

                        SmVector3 hdl_v = ndl_v+nv_v;
                        normalize(hdl_v);

                        if (spu && spv && a_sm)
                        {
                            rgb1_v = ambient(ka, I_d)+ asm_diff(kd, ks, ndl_v, normal_v, nv_v, I_d)+ asm_spec(ks, ndl_v, normal_v, nv_v, spu, spv, hdl_v, U_v, V_v, I_d)+ rgb1_v;
                        }
                        else if (spu && spv && !a_sm)
                        {

                            double *new_dp = (double *)calloc(1, sizeof(double));

                            new_dp[0] = (spu[0] * pow(dot(hdl_v, U_v), 2) + spv[0] * pow(dot(hdl_v, V_v), 2)) / (1 - pow(dot(hdl_v, normal_v), 2));

                            rgb1_v = ambient(ka, I_d)+diffuse(kd, I_d, ndl_v, normal_v)+specular(ks, I_d, ndl_v, normal_v, nv_v, new_dp)+rgb1_v;
                        }
                        else
                        {
                            rgb1_v = ambient(ka, I_d)+diffuse(kd, I_d, ndl_v, normal_v)+specular(ks, I_d, ndl_v, normal_v, nv_v, sp_coef)+rgb1_v;
                        }
                        i = i + 1;
                    }
                }

                if (point_sources)
                {
                    int i = 0;
                    while (point_sources[i])
                    {
                        pl = &(point_sources[i][0]);
                        I_p = &(point_sources[i][3]);
                        SmVector3 pl_v(pl[0],pl[1],pl[2]);
                        SmVector3 npl_v = pl_v + normal_v* (-1);
                        normalize(npl_v);
                        SmVector3 hpl_v= npl_v + nv_v;
                        normalize(hpl_v);

                        if (spu && spv && a_sm)
                        {
                            rgb2_v = ambient(ka, I_p)+ asm_diff(kd, ks, npl_v, normal_v, nv_v, I_p)+asm_spec(ks, npl_v, normal_v, nv_v, spu, spv, hpl_v, U_v, V_v, I_p)+ rgb2_v;
                        }
                        else if (spu && spv && !a_sm)
                        {
                            double *new_pp = (double *)calloc(1, sizeof(double));
                            new_pp[0] = (spu[0] * pow(dot(hpl_v, U_v), 2) + spv[0] * pow(dot(hpl_v, V_v), 2)) / (1 - pow(dot(hpl_v, normal_v), 2));
                            rgb2_v = ambient(ka, I_p)+diffuse(kd, I_p, npl_v, normal_v)+specular(ks, I_p, npl_v, normal_v, nv_v, new_pp)+rgb2_v;
                        }
                        else
                        {
                            rgb2_v =ambient(ka, I_p)+diffuse(kd, I_p, npl_v, normal_v)+specular(ks, I_p, npl_v, normal_v, nv_v, sp_coef) + rgb2_v;
                        }
                        i += 1;
                    }
                }
                //set pixel color
                SmVector3 rgb_v = rgb1_v + rgb2_v;
                setPixel(i, j, rgb_v[0], rgb_v[1], rgb_v[2]);
            }
        }
    }
    glEnd();
}

//****************************************************
// function that does the actual drawing of stuff
//***************************************************

void display(GLFWwindow *window)
{
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f); //clear background screen to black

    glClear(GL_COLOR_BUFFER_BIT); // clear the color buffer (sets everything to black)

    glMatrixMode(GL_MODELVIEW); // indicate we are specifying camera transformations
    glLoadIdentity();           // make sure transformation is "zero'd"

    //----------------------- code to draw objects --------------------------
    glPushMatrix();
    glTranslatef(Translation[0], Translation[1], Translation[2]);
    drawCircle(
        Width_global / 2.0,
        Height_global / 2.0,
        min(Width_global, Height_global) * 0.8 / 2.0); // What do you think this is doing?
    glPopMatrix();

    glfwSwapBuffers(window);
}

//****************************************************
// function that is called when window is resized
//***************************************************

void size_callback(GLFWwindow *window, int width, int height)
{
    // The width and height arguments are not used
    // because they are not the size of the window
    // in pixels.

    // Get the pixel coordinate of the window
    // it returns the size, in pixels, of the
    // framebuffer of the specified window
    glfwGetFramebufferSize(window, &Width_global, &Height_global);

    glViewport(0, 0, Width_global, Height_global);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, Width_global, 0, Height_global, 1, -1);

    display(window);
}

double ***readCmd(int argc, char *argv[])
{
    double ***retVal = (double ***)calloc(9, sizeof(double **));
    int i = 1, plc = 0, dlc = 0;
    while (i < argc)
    {
        //cout<<"start"<<endl;
        if (strcmp(argv[i], "-ka") == 0)
        {
            //cout<<"ka found"<<endl;
            double **ret = (double **)calloc(1, sizeof(double *));
            retVal[0] = ret;
            double *r = (double *)calloc(3, sizeof(double));
            ret[0] = r;
            r[0] = stof(argv[i + 1]);
            r[1] = stof(argv[i + 2]);
            r[2] = stof(argv[i + 3]);
            i += 4;
        }
        else if (strcmp(argv[i], "-kd") == 0)
        {
            //cout<<"kd found"<<endl;
            double **ret = (double **)calloc(1, sizeof(double *));
            retVal[1] = ret;
            double *r = (double *)calloc(3, sizeof(double));
            ret[0] = r;
            r[0] = stof(argv[i + 1]);
            r[1] = stof(argv[i + 2]);
            r[2] = stof(argv[i + 3]);
            i += 4;
        }
        else if (strcmp(argv[i], "-ks") == 0)
        {
            //cout<<"ks found"<<endl;
            double **ret = (double **)calloc(1, sizeof(double *));
            retVal[2] = ret;
            double *r = (double *)calloc(3, sizeof(double));
            ret[0] = r;
            r[0] = stof(argv[i + 1]);
            r[1] = stof(argv[i + 2]);
            r[2] = stof(argv[i + 3]);
            i += 4;
        }
        else if (strcmp(argv[i], "-spu") == 0)
        {
            //cout<<"spu found"<<endl;
            double **ret = (double **)calloc(1, sizeof(double *));
            retVal[3] = ret;
            double *r = (double *)calloc(1, sizeof(double));
            ret[0] = r;
            r[0] = stof(argv[i + 1]);
            i += 2;
        }
        else if (strcmp(argv[i], "-spv") == 0)
        {
            //cout<<"spv found"<<endl;
            double **ret = (double **)calloc(1, sizeof(double *));
            retVal[4] = ret;
            double *r = (double *)calloc(1, sizeof(double));
            ret[0] = r;
            r[0] = stof(argv[i + 1]);
            i += 2;
        }
        else if (strcmp(argv[i], "-sp") == 0)
        {
            //cout<<"sp found"<<endl;
            double **ret = (double **)calloc(1, sizeof(double *));
            retVal[5] = ret;
            double *r = (double *)calloc(1, sizeof(double));
            ret[0] = r;
            r[0] = stof(argv[i + 1]);
            i += 2;
        }
        else if (strcmp(argv[i], "-pl") == 0)
        {
            //cout<<"pl found"<<endl;

            if (plc == 0)
            {
                double **ret = (double **)calloc(5, sizeof(double *));

                retVal[6] = ret;
            }
            double *r = (double *)calloc(6, sizeof(double));
            retVal[6][plc] = r;
            r[0] = stof(argv[i + 1]);
            r[1] = stof(argv[i + 2]);
            r[2] = stof(argv[i + 3]);
            r[3] = stof(argv[i + 4]);
            r[4] = stof(argv[i + 5]);
            r[5] = stof(argv[i + 6]);
            plc += 1;
            i += 7;
        }
        else if (strcmp(argv[i], "-dl") == 0)
        {
            //cout<<"dl found"<<endl;

            if (dlc == 0)
            {
                double **ret = (double **)calloc(5, sizeof(double *));
                retVal[7] = ret;
            }
            double *r = (double *)calloc(6, sizeof(double));
            retVal[7][dlc] = r;
            r[0] = stof(argv[i + 1]);
            r[1] = stof(argv[i + 2]);
            r[2] = stof(argv[i + 3]);
            r[3] = stof(argv[i + 4]);
            r[4] = stof(argv[i + 5]);
            r[5] = stof(argv[i + 6]);
            dlc += 1;
            i += 7;
        }
        else if (strcmp(argv[i], "-asm") == 0)
        {
            //cout<<"asm found"<<endl;
            double **ret = (double **)calloc(1, sizeof(double *));
            retVal[8] = ret;
            double *r = (double *)calloc(1, sizeof(double));
            ret[0] = r;
            r[0] = 1;
            i += 1;
        }
        else
        {
            cout << "Unknown command" << endl;
            return NULL;
        }
    }
    return retVal;
}

//****************************************************
// the usual stuff, nothing exciting here
//****************************************************

int main(int argc, char *argv[])
{
    if (argc > 1)
    {
        cmd = readCmd(argc, argv);
        if (cmd)
        {
            for (int i = 0; i < 9; ++i)
            {
                if (cmd[i])
                {
                    if (i == 0)
                    {
                        ka = cmd[i][0];
                    }
                    else if (i == 1)
                    {
                        kd = cmd[i][0];
                    }
                    else if (i == 2)
                    {
                        ks = cmd[i][0];
                    }
                    else if (i == 3)
                    {
                        spu = cmd[i][0];
                    }
                    else if (i == 4)
                    {
                        spv = cmd[i][0];
                    }
                    else if (i == 5)
                    {
                        sp_coef = cmd[i][0];
                    }
                    else if (i == 6)
                    {
                        point_sources = cmd[i];
                    }
                    else if (i == 7)
                    {
                        directional_sources = cmd[i];
                    }
                    else if (i == 8)
                    {
                        a_sm = cmd[i][0];
                    }
                }
            }
        }
    }

    if (!ka)
    {
        ka = (double *)calloc(3, sizeof(double));
        ka[0] = 0;
        ka[1] = 0;
        ka[2] = 0;
    }
    if (!kd)
    {
        kd = (double *)calloc(3, sizeof(double));
        kd[0] = 0;
        kd[1] = 0;
        kd[2] = 0;
    }
    if (!ks)
    {
        ks = (double *)calloc(3, sizeof(double));
        ks[0] = 0;
        ks[1] = 0;
        ks[2] = 0;
    }
    if (!sp_coef)
    {
        sp_coef = (double *)calloc(1, sizeof(double));
        sp_coef[0] = 1;
    }

    if (!point_sources)
    {
        pl = (double *)calloc(3, sizeof(double));
        pl[0] = 0;
        pl[1] = 0;
        pl[2] = 0;
        I_p = (double *)calloc(3, sizeof(double));
        I_p[0] = 0;
        I_p[1] = 0;
        I_p[2] = 0;
    }
    if (!directional_sources)
    {
        dl = (double *)calloc(3, sizeof(double));
        dl[0] = 0;
        dl[1] = 0;
        dl[2] = 0;
        I_d = (double *)calloc(3, sizeof(double));
        I_d[0] = 0;
        I_d[1] = 0;
        I_d[2] = 0;
    }
    if (!a_sm)a_sm = NULL;


    //This initializes glfw
    initializeRendering();

    GLFWwindow *window = glfwCreateWindow(Width_global, Height_global, "Computer Graphics", NULL, NULL);
    if (!window)
    {
        cerr << "Error on window creating" << endl;
        glfwTerminate();
        return -1;
    }

    VideoMode_global = glfwGetVideoMode(glfwGetPrimaryMonitor());
    if (!VideoMode_global)
    {
        cerr << "Error on getting monitor" << endl;
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);
    glfwGetFramebufferSize(window, &Width_global, &Height_global);

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, Width_global, 0, Height_global, 1, -1);

    size_callback(window, 0, 0);

    glfwSetWindowSizeCallback(window, size_callback);
    glfwSetKeyCallback(window, key_callback);

    while (!glfwWindowShouldClose(window)) // main loop to draw object again and again
    {
        display(window);

        glfwPollEvents();
    }

    return 0;
}
