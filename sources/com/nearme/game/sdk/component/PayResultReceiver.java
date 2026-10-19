package com.nearme.game.sdk.component;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.json.mediationsdk.utils.c;
import com.json.o2;
import com.nearme.game.sdk.GameCenterSDK;
import com.nearme.game.sdk.b.a;
import com.nearme.game.sdk.common.model.biz.b;
import com.nearme.platform.opensdk.pay.PayResponse;
import com.nearme.plugin.framework.LogUtils;

/* JADX INFO: loaded from: classes4.dex */
public class PayResultReceiver extends BroadcastReceiver {
    private String a;
    private a b;
    private a c;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        LogUtils.log("PayResultReceiver", "action = " + action);
        PayResponse payResponse = PayResponse.parse(intent.getStringExtra(c.Y1));
        if (payResponse == null) {
            LogUtils.log("PayResultReceiver", "onReceive payResponse is null.");
            Toast.makeText(context, o2.h.t, 0).show();
            GameCenterSDK.getInstance().a(new b("pay_result", this.a, 1010, "payResponse is null."));
            return;
        }
        if (this.a.equals(payResponse.f7691d)) {
            if ("nearme.pay.response".equals(action)) {
                int i = payResponse.a;
                if (1001 == i) {
                    a aVar = this.b;
                    if (aVar != null) {
                        aVar.onSuccess(payResponse.b);
                    }
                    GameCenterSDK.getInstance().a(new b("pay_result", this.a, 1001, ""));
                } else if (1004 == i) {
                    a aVar2 = this.b;
                    if (aVar2 != null) {
                        aVar2.a("cancel", 1004);
                    }
                    GameCenterSDK.getInstance().a(new b("pay_result", this.a, 1004, payResponse.b));
                } else {
                    a aVar3 = this.b;
                    if (aVar3 != null) {
                        aVar3.a(payResponse.b, 1010);
                    }
                    GameCenterSDK.getInstance().a(new b("pay_result", this.a, 1010, "payBroadcast->" + payResponse.a + payResponse.b));
                }
            } else if ("nearme.plugin.aciton.notify.cp_sms_pay".equals(action)) {
                a aVar4 = this.c;
                if (aVar4 != null) {
                    aVar4.a("SMS pay", 10501050);
                }
                GameCenterSDK.getInstance().a(new b("pay_result", this.a, 10501050, "SMS pay"));
            }
            context.unregisterReceiver(this);
            LogUtils.log("PayResultReceiver", "onReceive payResponse not null order = " + payResponse.f7691d);
        }
    }
}
