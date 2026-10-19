package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import com.json.b4;
import com.mbridge.msdk.foundation.db.BatchReportDao;
import com.mbridge.msdk.foundation.tools.aa;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Stack;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: MBBatchReportManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class k {
    private static final String a = "k";
    private static volatile k b;
    private Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7188d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7189e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f7190f;
    private BatchReportDao h;
    private AtomicInteger i;
    private Stack<Long> j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7191g = com.mbridge.msdk.foundation.same.net.g.d.a().a;
    private Executor k = Executors.newSingleThreadExecutor();

    private k() {
        this.f7188d = false;
        this.f7189e = 30;
        this.f7190f = 5000L;
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB != null) {
            this.f7189e = eVarB.an();
            this.f7190f = eVarB.ao() * 1000;
            this.f7188d = eVarB.ap() == 1;
        }
        if (this.f7188d) {
            this.i = new AtomicInteger(0);
            this.j = new Stack<>();
            this.h = BatchReportDao.getInstance(com.mbridge.msdk.foundation.controller.b.d().g());
            HandlerThread handlerThread = new HandlerThread("mb_batch_report_thread");
            handlerThread.start();
            this.c = new Handler(handlerThread.getLooper()) { // from class: com.mbridge.msdk.foundation.same.report.k.1
                @Override // android.os.Handler
                public final void handleMessage(Message message) {
                    Bundle data;
                    int i = message.what;
                    if (i == 1) {
                        Bundle data2 = message.getData();
                        if (k.this.c == null || k.this.h == null || data2 == null) {
                            return;
                        }
                        k.this.c.removeMessages(2);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        k.a(k.this, k.this.h.getBatchReportMessages(jCurrentTimeMillis, 1), jCurrentTimeMillis);
                        k.this.i.set(0);
                        return;
                    }
                    if (i != 2) {
                        if (i == 3 && (data = message.getData()) != null) {
                            k.b(k.this, data.getParcelableArrayList("report_message"), data.getLong("last_report_time"));
                            return;
                        }
                        return;
                    }
                    Bundle data3 = message.getData();
                    if (k.this.c == null || k.this.h == null || data3 == null) {
                        return;
                    }
                    k.this.c.removeMessages(1);
                    long j = data3.getLong("last_report_time");
                    k.a(k.this, k.this.h.getBatchReportMessages(j, 1), j);
                }
            };
        }
    }

    public static k a() {
        if (b == null) {
            synchronized (k.class) {
                if (b == null) {
                    b = new k();
                }
            }
        }
        return b;
    }

    static /* synthetic */ void a(k kVar, ArrayList arrayList, long j) {
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("report_message", arrayList);
        bundle.putLong("last_report_time", j);
        messageObtain.setData(bundle);
        messageObtain.what = 3;
        kVar.c.sendMessage(messageObtain);
    }

    static /* synthetic */ void b(k kVar, final ArrayList arrayList, final long j) {
        Context contextG;
        if (arrayList == null || arrayList.size() <= 0 || (contextG = com.mbridge.msdk.foundation.controller.b.d().g()) == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.net.h.d dVarA = q.a(contextG);
        dVarA.a("app_id", com.mbridge.msdk.foundation.controller.b.d().h());
        dVarA.a("m_sdk", "msdk");
        dVarA.a("lqswt", String.valueOf(1));
        StringBuilder sb = new StringBuilder();
        com.mbridge.msdk.c.e eVarG = com.mbridge.msdk.c.f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
        for (int i = 0; i < arrayList.size(); i++) {
            BatchReportMessage batchReportMessage = (BatchReportMessage) arrayList.get(i);
            if (batchReportMessage != null) {
                String reportMessage = batchReportMessage.getReportMessage();
                if (!TextUtils.isEmpty(reportMessage) && !reportMessage.contains("&ts=")) {
                    reportMessage = reportMessage + "&ts=" + batchReportMessage.getTimestamp();
                }
                if (g.a(eVarG, reportMessage)) {
                    sb.append(reportMessage);
                    if (i >= 0 && i < arrayList.size() - 1) {
                        sb.append("\n");
                    }
                }
            }
        }
        try {
            dVarA.a("data", URLEncoder.encode(sb.toString(), b4.L));
            new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g()).post(0, kVar.f7191g, dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.k.2
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str) {
                    Stack stack;
                    synchronized (k.this.j) {
                        k.this.j.add(Long.valueOf(j));
                        if (k.this.h != null) {
                            k.this.h.updateMessagesReportState(arrayList);
                        }
                        try {
                            if (k.this.j.size() >= 5) {
                                try {
                                    k.this.j.pop();
                                    long jLongValue = ((Long) k.this.j.pop()).longValue();
                                    k.this.j.clear();
                                    if (k.this.h != null) {
                                        k.this.h.deleteBatchReportMessagesByTimestamp(jLongValue);
                                    }
                                    stack = k.this.j;
                                } catch (Exception e2) {
                                    aa.d(k.a, e2.getMessage());
                                    stack = k.this.j;
                                }
                                stack.clear();
                            }
                        } catch (Throwable th) {
                            k.this.j.clear();
                            throw th;
                        }
                    }
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str) {
                    try {
                        if (k.this.h != null) {
                            k.this.h.deleteBatchReportMessagesByTimestamp(j);
                        }
                    } catch (Exception e2) {
                        aa.d(k.a, e2.getMessage());
                    }
                    synchronized (k.this.j) {
                        k.this.j.clear();
                    }
                }
            });
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
    }

    public final synchronized void a(final String str) {
        Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.foundation.same.report.k.3
            @Override // java.lang.Runnable
            public final void run() {
                if (k.this.h == null || !k.this.f7188d) {
                    return;
                }
                aa.a(k.a, "接收到上报数据： " + str);
                k.this.h.addReportMessage(str, 1);
                if (k.this.c != null && k.this.f7190f > 0 && !k.this.c.hasMessages(1)) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 1;
                    k.this.c.sendMessageDelayed(messageObtain, k.this.f7190f);
                }
                if (k.this.i.incrementAndGet() < k.this.f7189e || k.this.c == null) {
                    return;
                }
                Message messageObtain2 = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putLong("last_report_time", System.currentTimeMillis());
                messageObtain2.setData(bundle);
                messageObtain2.what = 2;
                k.this.c.sendMessage(messageObtain2);
                k.this.i.set(0);
            }
        };
        com.mbridge.msdk.foundation.controller.c.a();
        Executor executor = this.k;
        if (executor != null) {
            executor.execute(runnable);
        } else {
            runnable.run();
        }
    }

    public final void b() {
        Handler handler;
        if (!this.f7188d || (handler = this.c) == null || handler.hasMessages(1)) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        this.c.sendMessageDelayed(messageObtain, 5000L);
    }

    public final synchronized boolean c() {
        return this.f7188d;
    }
}
