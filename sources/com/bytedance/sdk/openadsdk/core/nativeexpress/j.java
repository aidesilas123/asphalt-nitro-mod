package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import com.bytedance.sdk.openadsdk.core.model.q;
import org.json.JSONObject;

/* JADX INFO: compiled from: ExpressInitHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    public static void a() {
        com.bytedance.sdk.component.adexpress.a.a.a.a().a(new com.bytedance.sdk.component.adexpress.a.a.b() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.j.1
            @Override // com.bytedance.sdk.component.adexpress.a.a.b
            public int a(String str, ContentValues contentValues, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.multipro.a.a.a(com.bytedance.sdk.openadsdk.core.o.a(), str, contentValues, str2, strArr);
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.b
            public int a(String str, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.multipro.a.a.a(com.bytedance.sdk.openadsdk.core.o.a(), str, str2, strArr);
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.b
            public Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
                return new com.bytedance.sdk.openadsdk.multipro.aidl.c(com.bytedance.sdk.openadsdk.multipro.a.a.a(com.bytedance.sdk.openadsdk.core.o.a(), str, strArr, str2, strArr2, str3, str4, str5));
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.b
            public void a(String str, ContentValues contentValues) {
                com.bytedance.sdk.openadsdk.multipro.a.a.a(com.bytedance.sdk.openadsdk.core.o.a(), str, contentValues);
            }
        });
        com.bytedance.sdk.component.adexpress.a.a.a.a().a(new com.bytedance.sdk.component.adexpress.a.a.c() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.j.2
            /* JADX INFO: Access modifiers changed from: private */
            public void a(MessageQueue messageQueue) {
                if (messageQueue != null) {
                    messageQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.j.2.2
                        @Override // android.os.MessageQueue.IdleHandler
                        public boolean queueIdle() {
                            com.bytedance.sdk.openadsdk.core.widget.a.b.b().c();
                            return false;
                        }
                    });
                }
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public int a() {
                if (com.bytedance.sdk.openadsdk.core.o.d() == null) {
                    return 0;
                }
                return com.bytedance.sdk.openadsdk.core.o.d().d();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public Context b() {
                return com.bytedance.sdk.openadsdk.core.o.a();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public Handler c() {
                return com.bytedance.sdk.openadsdk.core.l.c();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public void d() {
                if (com.bytedance.sdk.openadsdk.core.o.d().Y() == 0 || com.bytedance.sdk.openadsdk.core.o.d().Z() == 0) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.d.e.a().a(com.bytedance.sdk.openadsdk.core.o.d().Y());
                final MessageQueue[] messageQueueArr = new MessageQueue[1];
                if (Build.VERSION.SDK_INT >= 23) {
                    messageQueueArr[0] = com.bytedance.sdk.openadsdk.core.l.c().getLooper().getQueue();
                    a(messageQueueArr[0]);
                } else if (Looper.getMainLooper() != Looper.myLooper()) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.j.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            messageQueueArr[0] = Looper.myQueue();
                            a(messageQueueArr[0]);
                        }
                    });
                } else {
                    messageQueueArr[0] = Looper.myQueue();
                    a(messageQueueArr[0]);
                }
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public com.bytedance.sdk.component.adexpress.a.c.a e() {
                return com.bytedance.sdk.openadsdk.core.o.c().a();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public com.bytedance.sdk.component.f.b.a f() {
                return com.bytedance.sdk.openadsdk.k.c.a().b().d();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public com.bytedance.sdk.component.f.b.b g() {
                return com.bytedance.sdk.openadsdk.k.c.a().b().c();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public String h() {
                return com.bytedance.sdk.openadsdk.core.h.b().d();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public int i() {
                return 1;
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public int j() {
                return com.bytedance.sdk.openadsdk.core.o.d().Y();
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.c
            public int k() {
                return 0;
            }
        });
        com.bytedance.sdk.component.adexpress.a.a.a.a().a(new com.bytedance.sdk.component.adexpress.a.a.d() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.j.3
            @Override // com.bytedance.sdk.component.adexpress.a.a.d
            public void a(int i) {
                com.bytedance.sdk.openadsdk.j.b.a().a(com.bytedance.sdk.openadsdk.j.a.b.b().b(i).f(com.bytedance.sdk.openadsdk.core.g.a(i)));
            }

            @Override // com.bytedance.sdk.component.adexpress.a.a.d
            public void a(int i, String str) {
                com.bytedance.sdk.openadsdk.j.b.a().b(com.bytedance.sdk.openadsdk.j.a.b.b().b(i).f(str));
            }
        });
        com.bytedance.sdk.component.widget.a.a.a().a(new com.bytedance.sdk.component.widget.a.b() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.j.4
            @Override // com.bytedance.sdk.component.widget.a.b
            public void a(com.bytedance.sdk.component.widget.b.a aVar, String str, String str2, JSONObject jSONObject, long j) {
                q qVarB = q.b();
                qVarB.q(aVar.a());
                qVarB.s(aVar.b());
                qVarB.q(aVar.c());
                com.bytedance.sdk.openadsdk.b.c.b(qVarB, str, str2, jSONObject, j);
            }
        });
    }
}
