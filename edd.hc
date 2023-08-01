#include "stdio.h"
#include "stdbool.h"

const I32 MAX_TASKS = 100;


U0 swap(I32 *a, I32 *b)
{
    I32 temp = *a;
    *a = *b;
    *b = temp;
}


U0 sort(I32 arrival[], I32 due_date[], I32 n)
{
    for (I32 i = 0; i < n - 1; i++)
    {
        I32 min_index = i;
        for (I32 j = i + 1; j < n; j++)
        {
            if (due_date[j] < due_date[min_index])
            {
                min_index = j;
            }
        }
        swap(&due_date[i], &due_date[min_index]);
        swap(&arrival[i], &arrival[min_index]);
    }
}


U0 edd(I32 arrival[], I32 due_date[], I32 n)
{
    I32 current_time = 0;

    sort(arrival, due_date, n);

    Print("Schedule:\n");
    for (I32 i = 0; i < n; i++)
    {
        Print("Task %d: Arrival Time %d, Due Date %d\n", i + 1, arrival[i], due_date[i]);
        current_time = arrival[i] > current_time ? arrival[i] : current_time;
        Print("Start Time: %d\n", current_time);
        current_time += 1;
    }
}

I32 main()
{
    I32 n;
    I32 arrival[MAX_TASKS];
    I32 due_date[MAX_TASKS];

    Print("Enter the number of tasks: ");
    GetI64("%d", &n);

    Print("Enter the arrival time and due date for each task (a d):\n");
    for (I32 i = 0; i < n; i++)
    {
        GetI64("%d %d", &arrival[i], &due_date[i]);
    }

    edd(arrival, due_date, n);

    return 0;
}
//main();
