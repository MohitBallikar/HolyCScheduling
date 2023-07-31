#include "stdio.h"
#include "stdbool.h"

//essentially defining a const int rather than using #define
const I32 MAX_TASKS = 100;

U0 swap(I32 *a, I32 *b) 
{
    I32 temp = *a;
    *a = *b;
    *b = temp;
}

U0 sort_by_ed(I32 release_time[], I32 deadline[], I32 computation_time[], I32 n)
{
    for (I32 i = 0; i < n - 1; i++)
    {
        for (I32 j = 0; j < n - i - 1; j++)
         {
            if (deadline[j] > deadline[j + 1])
            {
                swap(&deadline[j], &deadline[j + 1]);
                swap(&release_time[j], &release_time[j + 1]);
                swap(&computation_time[j], &computation_time[j + 1]);
            }
        }
    }
}

U0 edf(I32 release_time[], I32 deadline[], I32 computation_time[], I32 n)
{
    I32 current_time = 0;

    sort_by_ed(release_time, deadline, computation_time, n);

    Print("Schedule:\n");
    for (I32 i = 0; i < n; i++) 
    {
        Print("Task %d: Execution Time %d\n", i + 1, computation_time[i]);
        current_time += computation_time[i];

        if (i < n - 1 && release_time[i + 1] > current_time)
        {
            Print("Idle Time: %d\n", release_time[i + 1] - current_time);
            current_time = release_time[i + 1];
        }
    }
}

I32 main() 
{
    I32 release_time[MAX_TASKS];
    I32 deadline[MAX_TASKS];
    I32 computation_time[MAX_TASKS];
    I32 n;

    Print("Enter the number of tasks: ");
    //need to double-check scan syntax
    GetI64("%d", &n);

    Print("Enter the release time, deadline, and computation time for each task (r d c):\n");
    for (I32 i = 0; i < n; i++)
    {
        GetI64("%d %d %d", &release_time[i], &deadline[i], &computation_time[i]);
    }

    edf(release_time, deadline, computation_time, n);

    return 0;
}
//main();
//scanf can also be done with  g = GetStr and Str2I64(g) or vice versa
//Ed("Temp.CPP.Z");
