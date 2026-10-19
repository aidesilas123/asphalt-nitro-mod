package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Az, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class HandlerC0919Az extends Handler {
    public static String[] A01 = {"19chgsqBzMImuF0gwnX2kWBGh", "0va0RllBKLagHwkqX9d70BpModZgILa7", "XpojMROpw9tVkn", "wcizW", "UvDBMI562EynJYmanZ8wO6TzDmvB3zda", "jZLpPncA8U18qC4rrohpR2MIc", "dSPbX", "wnd1v8XwPzGQd7q91R22pRoLt2u"};
    public final /* synthetic */ XB A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0919Az(XB xb, Looper looper) {
        super(looper);
        this.A00 = xb;
    }

    private long A00(int i) {
        return Math.min((i - 1) * 1000, 5000);
    }

    private boolean A01(Message message) {
        int i;
        if (!(message.arg1 == 1) || (i = message.arg2 + 1) > this.A00.A0D) {
            return false;
        }
        Message messageObtain = Message.obtain(message);
        messageObtain.arg2 = i;
        sendMessageDelayed(messageObtain, A00(i));
        return true;
    }

    public final void A02(int i, Object obj, boolean z) {
        obtainMessage(i, z ? 1 : 0, 0, obj).sendToTarget();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            Object obj = message.obj;
            try {
                switch (message.what) {
                    case 0:
                        e = this.A00.A0B.executeProvisionRequest(this.A00.A0C, (BQ) obj);
                        break;
                    case 1:
                        Pair pair = (Pair) obj;
                        e = this.A00.A0B.executeKeyRequest(this.A00.A0C, (BM) pair.first, (String) pair.second);
                        break;
                    default:
                        throw new RuntimeException();
                }
            } catch (Exception e2) {
                e = e2;
                if (A01(message)) {
                    return;
                }
                String[] strArr = A01;
                if (strArr[1].charAt(1) != strArr[4].charAt(1)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[6] = "iOxYX";
                strArr2[7] = "16FbQS5YLOa2TifOFD04FKBpDBi";
            }
            this.A00.A0A.obtainMessage(message.what, Pair.create(obj, e)).sendToTarget();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
