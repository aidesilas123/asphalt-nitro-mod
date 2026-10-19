package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.j7;
import com.tapjoy.internal.t7;
import com.tapjoy.internal.y6;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class p {
    public static TJEarnedCurrencyListener a;
    public final Context b;
    public Boolean c;

    public p(Context context) {
        this.b = context;
    }

    public final boolean a() {
        if (this.c == null) {
            SharedPreferences sharedPreferences = this.b.getSharedPreferences("tjcPrefrences", 0);
            if (!sharedPreferences.contains("currency_self_managed")) {
                return false;
            }
            this.c = Boolean.valueOf(sharedPreferences.getBoolean("currency_self_managed", false));
        }
        return this.c.booleanValue();
    }

    public void b(int i, TJAwardCurrencyListener tJAwardCurrencyListener) {
        if (i < 0) {
            TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "Amount must be a positive number for the awardCurrency API"));
            if (tJAwardCurrencyListener != null) {
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure("Amount must be a positive number for the awardCurrency API");
                return;
            }
            return;
        }
        if (a()) {
            TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "awardCurrency is not supported with self managed currency"));
            if (tJAwardCurrencyListener != null) {
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure("awardCurrency is not supported with self managed currency");
                return;
            }
            return;
        }
        String string = UUID.randomUUID().toString();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        Map<String, String> genericURLParams = TapjoyConnectCore.getGenericURLParams();
        TapjoyUtil.safePut(genericURLParams, "tap_points", String.valueOf(i), true);
        TapjoyUtil.safePut(genericURLParams, "guid", string, true);
        TapjoyUtil.safePut(genericURLParams, "timestamp", String.valueOf(jCurrentTimeMillis), true);
        TapjoyUtil.safePut(genericURLParams, "verifier", TapjoyConnectCore.getAwardCurrencyVerifier(jCurrentTimeMillis, i, string), true);
        new Thread(new t7(this, genericURLParams, tJAwardCurrencyListener)).start();
    }

    public void c(TJGetCurrencyBalanceListener tJGetCurrencyBalanceListener) {
        if (!a()) {
            new Thread(new y6(this, TapjoyConnectCore.getURLParams(), tJGetCurrencyBalanceListener)).start();
            return;
        }
        TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "getCurrencyBalance is not supported with self managed currency"));
        if (tJGetCurrencyBalanceListener != null) {
            tJGetCurrencyBalanceListener.onGetCurrencyBalanceResponseFailure("getCurrencyBalance is not supported with self managed currency");
        }
    }

    public int d() {
        return this.b.getSharedPreferences("tjcPrefrences", 0).getInt("last_currency_balance", -9999);
    }

    public void e(int i) {
        SharedPreferences.Editor editorEdit = this.b.getSharedPreferences("tjcPrefrences", 0).edit();
        editorEdit.putInt("last_currency_balance", i);
        editorEdit.apply();
    }

    public void f(TJEarnedCurrencyListener tJEarnedCurrencyListener) {
        a = tJEarnedCurrencyListener;
    }

    public void g(int i, TJSpendCurrencyListener tJSpendCurrencyListener) {
        if (i < 0) {
            TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "Amount must be a positive number for the spendCurrency API"));
            if (tJSpendCurrencyListener != null) {
                tJSpendCurrencyListener.onSpendCurrencyResponseFailure("Amount must be a positive number for the spendCurrency API");
                return;
            }
            return;
        }
        if (a()) {
            TapjoyLog.e("TJCurrency", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "spendCurrency is not supported with self managed currency"));
            if (tJSpendCurrencyListener != null) {
                tJSpendCurrencyListener.onSpendCurrencyResponseFailure("spendCurrency is not supported with self managed currency");
                return;
            }
            return;
        }
        Map<String, String> uRLParams = TapjoyConnectCore.getURLParams();
        TapjoyUtil.safePut(uRLParams, "tap_points", "" + i, true);
        new Thread(new j7(this, uRLParams, tJSpendCurrencyListener)).start();
    }
}
