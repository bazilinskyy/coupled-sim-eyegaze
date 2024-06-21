﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestSyncedCarSpawner : CarSpawnerBase
{
    public AICar TestCar;
    protected override IEnumerator SpawnCoroutine()
    {
        yield return new WaitForSeconds(1);
        SpawnDistraction(TestCar, false); // Bool for yielding

        /*yield return new WaitForSeconds(5);
        Spawn(TestCar, false);
        yield return new WaitForSeconds(5);
        Spawn(TestCar, false);*/
    }
}
