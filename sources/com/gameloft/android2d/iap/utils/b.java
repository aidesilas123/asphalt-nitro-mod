package com.gameloft.android2d.iap.utils;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: compiled from: ConnectionTimer.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends TimerTask {
    private Timer a;
    private c b;

    public void a(long j, c cVar) {
        this.b = cVar;
        Timer timer = new Timer();
        this.a = timer;
        timer.schedule(new b(), j);
    }

    public void b() {
        Timer timer = this.a;
        if (timer != null) {
            timer.cancel();
        }
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        c cVar = this.b;
        if (cVar != null) {
            cVar.b();
            c cVar2 = this.b;
            cVar2.r = true;
            cVar2.q = false;
            this.b = null;
        }
    }
}
