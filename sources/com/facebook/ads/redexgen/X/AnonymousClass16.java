package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.16, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class AnonymousClass16 extends BroadcastReceiver {
    public static String[] A03 = {"JgmY627JJ4fVvMUsUI7dBJzvca", "2Fivc7ze9Y6M7vLBAhVCw66dd2zEUTp", "oqNyJxLxp23hnAfKGRpFUMlaCTnSy4au", "HRO7fC4J0U3bXqsrOiWljP6J940cuLTJ", "rhEs9JkkityiMJcgD18RNPKtdGmllPs6", "c8I5EiJJKjWgwuyghylYWruaZ4nXJiut", "YeKDqRnNq5JcEGU0HYsnt6sxK1D4K6hE", "zIQMBMVVQmczFglCifMrZtV9RNUhKeCf"};
    public AbstractC1570aW A00;
    public AnonymousClass15 A01;
    public String A02;

    public AnonymousClass16(String str, AbstractC1570aW abstractC1570aW, AnonymousClass15 anonymousClass15) {
        this.A00 = abstractC1570aW;
        this.A01 = anonymousClass15;
        this.A02 = str;
    }

    public final IntentFilter A00() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(EnumC1270Pm.A06.A03(this.A02));
        intentFilter.addAction(EnumC1270Pm.A09.A03(this.A02));
        intentFilter.addAction(EnumC1270Pm.A04.A03(this.A02));
        intentFilter.addAction(EnumC1270Pm.A0A.A03(this.A02));
        intentFilter.addAction(EnumC1270Pm.A05.A03(this.A02));
        intentFilter.addAction(EnumC1270Pm.A0C.A03(this.A02));
        intentFilter.addAction(EnumC1270Pm.A0B.A03(this.A02));
        intentFilter.addAction(EnumC1270Pm.A03.A03(this.A02));
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (EnumC1270Pm.A06.A03(this.A02).equals(action)) {
            AnonymousClass15 anonymousClass15 = this.A01;
            AbstractC1570aW abstractC1570aW = this.A00;
            if (A03[1].length() != 11) {
                A03[0] = "z37hhVYNur1y5njE4t22VYTMbB";
                anonymousClass15.ACp(abstractC1570aW);
                return;
            }
        } else {
            if (!EnumC1270Pm.A09.A03(this.A02).equals(action)) {
                if (EnumC1270Pm.A04.A03(this.A02).equals(action)) {
                    this.A01.ACm(this.A00);
                    return;
                }
                if (EnumC1270Pm.A0A.A03(this.A02).equals(action)) {
                    this.A01.ACo(this.A00);
                    return;
                }
                if (EnumC1270Pm.A05.A03(this.A02).equals(action)) {
                    this.A01.onRewardedVideoClosed();
                    return;
                }
                if (EnumC1270Pm.A0B.A03(this.A02).equals(action)) {
                    this.A01.ACk(this.A00);
                    return;
                } else if (EnumC1270Pm.A0C.A03(this.A02).equals(action)) {
                    this.A01.ACl(this.A00);
                    return;
                } else {
                    if (EnumC1270Pm.A03.A03(this.A02).equals(action)) {
                        this.A01.onRewardedVideoActivityDestroyed();
                        return;
                    }
                    return;
                }
            }
            boolean zA1W = IP.A1W(context);
            String[] strArr = A03;
            if (strArr[3].charAt(16) != strArr[4].charAt(16)) {
                A03[0] = "a2nbOp8yH430aeg70B0MHQFnwN";
                if (!zA1W) {
                    this.A01.ACq(this.A00, AdError.INTERNAL_ERROR);
                    return;
                }
                AnonymousClass15 anonymousClass152 = this.A01;
                AbstractC1570aW abstractC1570aW2 = this.A00;
                AdError adError = AdError.AD_PRESENTATION_ERROR;
                String[] strArr2 = A03;
                if (strArr2[3].charAt(16) != strArr2[4].charAt(16)) {
                    String[] strArr3 = A03;
                    strArr3[2] = "Smm3aT6IchFgLH9ob00fwQqxHFnPPG6O";
                    strArr3[5] = "wzZfDEncWZ9M4YUYJFr8Gzf2lfnMb6hd";
                    anonymousClass152.ACq(abstractC1570aW2, adError);
                    return;
                }
                String[] strArr4 = A03;
                strArr4[6] = "douVyTcHxmEKv1YyJqQbVTsvWWCOpXBn";
                strArr4[7] = "x6yn97aV8hj96Z0WREVv4HAdEeLr9VIY";
                anonymousClass152.ACq(abstractC1570aW2, adError);
                return;
            }
        }
        throw new RuntimeException();
    }
}
