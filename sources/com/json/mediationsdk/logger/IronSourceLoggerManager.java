package com.json.mediationsdk.logger;

import com.json.mediationsdk.logger.IronSourceLogger;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceLoggerManager extends IronSourceLogger implements LogListener {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static IronSourceLoggerManager f6339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<IronSourceLogger> f6340f;

    private IronSourceLoggerManager(String str) {
        super(str);
        this.f6340f = new ArrayList<>();
        d();
    }

    private IronSourceLogger c(String str) {
        for (IronSourceLogger ironSourceLogger : this.f6340f) {
            if (ironSourceLogger.b().equals(str)) {
                return ironSourceLogger;
            }
        }
        return null;
    }

    private void d() {
        this.f6340f.add(new a(0));
    }

    public static synchronized IronSourceLoggerManager getLogger() {
        if (f6339e == null) {
            f6339e = new IronSourceLoggerManager(IronSourceLoggerManager.class.getSimpleName());
        }
        return f6339e;
    }

    public static synchronized IronSourceLoggerManager getLogger(int i) {
        IronSourceLoggerManager ironSourceLoggerManager = f6339e;
        if (ironSourceLoggerManager == null) {
            f6339e = new IronSourceLoggerManager(IronSourceLoggerManager.class.getSimpleName());
        } else {
            ironSourceLoggerManager.a = i;
        }
        return f6339e;
    }

    public void addLogger(IronSourceLogger ironSourceLogger) {
        this.f6340f.add(ironSourceLogger);
    }

    @Override // com.json.mediationsdk.logger.IronSourceLogger
    public synchronized void log(IronSourceLogger.IronSourceTag ironSourceTag, String str, int i) {
        if (i < this.a) {
            return;
        }
        for (IronSourceLogger ironSourceLogger : this.f6340f) {
            if (ironSourceLogger.a() <= i) {
                ironSourceLogger.log(ironSourceTag, str, i);
            }
        }
    }

    @Override // com.json.mediationsdk.logger.IronSourceLogger
    public synchronized void logException(IronSourceLogger.IronSourceTag ironSourceTag, String str, Throwable th) {
        if (th == null) {
            Iterator<IronSourceLogger> it = this.f6340f.iterator();
            while (it.hasNext()) {
                it.next().log(ironSourceTag, str, 3);
            }
        } else {
            Iterator<IronSourceLogger> it2 = this.f6340f.iterator();
            while (it2.hasNext()) {
                it2.next().logException(ironSourceTag, str, th);
            }
        }
    }

    @Override // com.json.mediationsdk.logger.LogListener
    public synchronized void onLog(IronSourceLogger.IronSourceTag ironSourceTag, String str, int i) {
        log(ironSourceTag, str, i);
    }

    public void setLoggerDebugLevel(String str, int i) {
        if (str == null) {
            return;
        }
        IronSourceLogger ironSourceLoggerC = c(str);
        if (ironSourceLoggerC == null) {
            log(IronSourceLogger.IronSourceTag.NATIVE, "Failed to find logger:setLoggerDebugLevel(loggerName:" + str + " ,debugLevel:" + i + ")", 0);
            return;
        }
        if (i < 0 || i > 3) {
            this.f6340f.remove(ironSourceLoggerC);
            return;
        }
        log(IronSourceLogger.IronSourceTag.NATIVE, "setLoggerDebugLevel(loggerName:" + str + " ,debugLevel:" + i + ")", 0);
        ironSourceLoggerC.setDebugLevel(i);
    }
}
