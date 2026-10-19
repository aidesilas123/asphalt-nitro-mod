package com.applovin.exoplayer2.m.a;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import androidx.annotation.BinderThread;

/* JADX INFO: loaded from: classes.dex */
final class d implements SensorEventListener {
    private boolean afq;
    private final float[] afr;
    private final float[] afs;
    private final float[] aft;
    private final float[] afu;
    private final Display afv;
    private final a[] afw;

    public interface a {
        void b(float[] fArr, float f2);
    }

    private void a(float[] fArr, float f2) {
        for (a aVar : this.afw) {
            aVar.b(fArr, f2);
        }
    }

    private void a(float[] fArr, int i) {
        if (i != 0) {
            int i2 = 130;
            int i3 = 129;
            if (i == 1) {
                i2 = 2;
            } else if (i == 2) {
                i2 = 129;
                i3 = 130;
            } else {
                if (i != 3) {
                    throw new IllegalStateException();
                }
                i3 = 1;
            }
            float[] fArr2 = this.afs;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.afs, i2, i3, fArr);
        }
    }

    private void b(float[] fArr) {
        if (!this.afq) {
            c.a(this.aft, fArr);
            this.afq = true;
        }
        float[] fArr2 = this.afs;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.afs, 0, this.aft, 0);
    }

    private float c(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.afs);
        SensorManager.getOrientation(this.afs, this.afu);
        return this.afu[2];
    }

    private static void d(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    @BinderThread
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.afr, sensorEvent.values);
        a(this.afr, this.afv.getRotation());
        float fC = c(this.afr);
        d(this.afr);
        b(this.afr);
        a(this.afr, fC);
    }
}
