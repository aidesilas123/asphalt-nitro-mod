package com.gameloft.android2d.iap;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.sdk.AppLovinEventParameters;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.billings.BillingFactory;
import com.gameloft.android2d.iap.billings.googleplaybilling.GoogleBilling;
import com.gameloft.android2d.iap.utils.CRMUtils;
import com.gameloft.android2d.iap.utils.Device;
import com.gameloft.android2d.iap.utils.IABRequestHandler;
import com.gameloft.android2d.iap.utils.RMS;
import com.gameloft.android2d.iap.utils.SUtils;
import com.gameloft.android2d.iap.utils.ServerInfo;
import com.gameloft.android2d.iap.utils.XPlayer;
import com.gameloft.android2d.iap.utils.XXTEA;
import com.gameloft.android2d.iap.wrapper.Image;
import com.gameloft.android2d.iap.wrapper.Utils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class IAPLib implements com.gameloft.android2d.iap.a {
    public static JSONObject X;
    public static JSONObject Y;
    public static Set<String> e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f2858f;
    public static Set<String> f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f2859g;
    private static String h;
    private static String i;
    Activity P0;
    Dialog Q0;
    private ServerInfo x0;
    private static final IAPLib j = new IAPLib();
    static int k = 0;
    private static String l = "IAP.Version: 1.2.0";
    public static String m = null;
    public static String n = null;
    public static boolean o = false;
    public static String p = null;
    public static boolean q = false;
    public static boolean r = false;
    public static boolean s = false;
    public static boolean t = false;
    public static boolean u = false;
    public static boolean v = false;
    public static boolean w = false;
    public static boolean x = false;
    private static String y = null;
    private static String z = null;
    private static long A = -2000;
    private static long B = 0;
    private static long C = 0;
    public static boolean D = false;
    public static boolean E = false;
    public static boolean F = false;
    public static boolean G = false;
    public static boolean H = false;
    private static boolean I = false;
    private static int J = 0;
    public static boolean K = false;
    public static boolean L = false;
    public static boolean M = false;
    public static boolean N = false;
    public static boolean O = false;
    private static boolean P = false;
    private static boolean Q = false;
    public static long R = 0;
    public static boolean S = false;
    public static String T = "";
    public static String U = "";
    public static String V = "";
    public static String W = "";
    public static String Z = "application/com.gameloft.ecomm.android.iap-v1.3+plain";
    public static String a0 = "text/html";
    public static boolean b0 = false;
    public static boolean c0 = false;
    public static boolean d0 = true;
    public static int g0 = -1;
    private static boolean h0 = false;
    private static int i0 = 0;
    private static int j0 = 0;
    private static int k0 = 0;
    private static int l0 = 0;
    private static String m0 = null;
    private static boolean n0 = false;
    public static int o0 = -1;
    public static ArrayList<String> p0 = new ArrayList<>();
    private static String q0 = null;
    public static int r0 = 0;
    public static String s0 = null;
    public static String t0 = null;
    public static boolean u0 = false;
    private static JSONArray v0 = new JSONArray();
    public static final String[] w0 = {"40412|40407|40404|40424|40482|40419|40478|40422|405799|40487|40489|40456|405852|405850|40444|40414|405848|405853|405845|405849|405846"};
    private boolean y0 = true;
    private boolean z0 = false;
    private String A0 = "";
    private int B0 = 0;
    private String C0 = "";
    private int D0 = -1;
    private String E0 = "";
    private String F0 = "";
    private int G0 = 0;
    private boolean H0 = false;
    private String I0 = "";
    private boolean J0 = false;
    private boolean K0 = false;
    private boolean L0 = false;
    private int M0 = 0;
    private String N0 = "";
    private String O0 = "";
    private boolean R0 = false;
    private boolean S0 = false;
    private boolean T0 = false;
    private boolean U0 = false;

    class a extends Thread {
        final /* synthetic */ String a;

        /* JADX INFO: renamed from: com.gameloft.android2d.iap.IAPLib$a$a, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0215a implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0215a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                IAPLib.setResult(10);
                dialogInterface.cancel();
            }
        }

        class b implements DialogInterface.OnKeyListener {
            b() {
            }

            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4 && keyEvent.getAction() == 1) {
                    IAPLib.setResult(10);
                    dialogInterface.cancel();
                }
                return true;
            }
        }

        a(String str) {
            this.a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(SUtils.getContext()).create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.setMessage(this.a);
            alertDialogCreate.setButton("OK", new DialogInterfaceOnClickListenerC0215a());
            alertDialogCreate.setOnKeyListener(new b());
            alertDialogCreate.show();
        }
    }

    class b implements DialogInterface.OnClickListener {
        final /* synthetic */ EditText a;

        b(EditText editText) {
            this.a = editText;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            IAPLib.t0 = this.a.getText().toString();
            IAPLib.j.H0 = true;
        }
    }

    class c implements DialogInterface.OnClickListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.cancel();
            IAPLib.j.H0 = true;
        }
    }

    class d implements DialogInterface.OnClickListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            IAPLib.u0 = false;
        }
    }

    class e implements DialogInterface.OnKeyListener {
        e() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getAction() == 1) {
                dialogInterface.dismiss();
                IAPLib.u0 = false;
            }
            return true;
        }
    }

    class f extends com.gameloft.android2d.iap.utils.d {
        f() {
        }

        @Override // com.gameloft.android2d.iap.utils.d
        public void a(Bundle bundle) {
            String string;
            if (bundle.getInt("a5") != 1) {
                IAP_CallBack.IAP_GetLimitsValidationCB(false);
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(bundle.getString("a4"));
                if (jSONObject.length() > 0 && (string = jSONObject.getString(b4.r)) != null && !string.equals("") && string.equals("true")) {
                    IAP_CallBack.IAP_GetLimitsValidationCB(true);
                } else {
                    IAP_CallBack.IAP_GetLimitsValidationCB(false);
                }
            } catch (JSONException unused) {
            }
        }
    }

    class g extends com.gameloft.android2d.iap.utils.d {
        final /* synthetic */ IABRequestHandler a;

        g(IABRequestHandler iABRequestHandler) {
            this.a = iABRequestHandler;
        }

        @Override // com.gameloft.android2d.iap.utils.d
        public void a(Bundle bundle) throws JSONException {
            if (bundle.getInt("a5") != 1) {
                bundle.getInt("a6");
                IAPLib.setResult(10);
                IAPLib.k = -2;
                return;
            }
            try {
                String string = bundle.getString("a4");
                String string2 = bundle.getString("a7");
                JSONArray jSONArray = new JSONArray(string);
                if (jSONArray.length() > 0) {
                    if (CRMUtils.CheckMD5Hash(string, IABRequestHandler.getInstance().f(), SUtils.getJSONValue(string2, SUtils.getStringRS(R.string.k_headerXInAppHash)), IAPLib.getIAPCRMKey())) {
                        com.gameloft.android2d.iap.billings.a aVarU = null;
                        Hashtable<String, com.gameloft.android2d.iap.utils.g> hashtableN = IAPLib.j.x0.b().n();
                        if (hashtableN != null) {
                            Enumeration<String> enumerationKeys = hashtableN.keys();
                            while (true) {
                                if (!enumerationKeys.hasMoreElements()) {
                                    break;
                                }
                                com.gameloft.android2d.iap.utils.g gVar = hashtableN.get(enumerationKeys.nextElement());
                                if (gVar != null) {
                                    aVarU = gVar.u();
                                    break;
                                }
                            }
                        }
                        if (aVarU != null) {
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject = jSONArray.getJSONObject(i);
                                aVarU.j(jSONObject.getString(AppLovinEventParameters.CONTENT_IDENTIFIER), jSONObject.getString("order_id"), aVarU.c(), "", true);
                            }
                        }
                    }
                }
            } catch (JSONException | Exception unused) {
            }
            IAPLib.GetListItemsRestoreCB();
            IAPLib.setResult(10);
            IAPLib.k = 0;
        }
    }

    class h extends Thread {
        h() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            BillingFactory.CreateBilling(AndroidStaticDeviceInfoDataSource.STORE_GOOGLE).d();
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            try {
                BillingFactory.CreateBilling(SUtils.getStringRS(R.string.k_GoogleBilling)).b();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Looper.loop();
        }
    }

    class j extends com.gameloft.android2d.iap.utils.d {
        j() {
        }

        @Override // com.gameloft.android2d.iap.utils.d
        public void a(Bundle bundle) {
            String string;
            String string2;
            if (bundle.getInt("a5") == 2) {
                int i = bundle.getInt("a6");
                if (i == 403 || i == 429) {
                    try {
                        JSONObject jSONObject = new JSONObject(bundle.getString("a4"));
                        string = jSONObject.getString("message");
                        try {
                            string2 = jSONObject.getString("code");
                        } catch (Exception unused) {
                            string2 = "";
                        }
                    } catch (Exception unused2) {
                        string = "";
                    }
                    if (string == null || string.equals("")) {
                        IAPLib.setResult(3);
                        IAPLib.setError(-5);
                    } else {
                        IAP_CallBack.IAP_OnLimitRequestCallback(string2);
                        IAPLib.showIAPLimitationWarning(string);
                    }
                } else {
                    IAPLib.setResult(3);
                    IAPLib.setError(-1);
                }
            } else {
                IAPLib.setResult(3);
                IAPLib.setError(-5);
            }
            bundle.clear();
        }
    }

    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            IAPLib.CheckPendingVerification();
            Looper.loop();
        }
    }

    class l implements DialogInterface.OnClickListener {
        l() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            IAPLib.setResult(3);
            IAPLib.setError(-16);
        }
    }

    class m implements DialogInterface.OnClickListener {
        m() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + SUtils.getContext().getPackageName()));
            SUtils.getContext().startActivity(intent);
            IAPLib.setResult(10);
            IAPLib.setError(0);
        }
    }

    class n implements DialogInterface.OnKeyListener {
        n() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4) {
                return true;
            }
            Toast.makeText(SUtils.getContext(), R.string.GP_CANNOT_GO_BACK, 0).show();
            return true;
        }
    }

    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            boolean unused = IAPLib.n0 = true;
            BillingFactory.CreateBilling(SUtils.getStringRS(R.string.k_GoogleBilling)).a();
            Looper.loop();
        }
    }

    class p extends Thread {
        final /* synthetic */ String a;

        p(String str) {
            this.a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                IAPLib.j.x0.b().j(this.a).u().g();
            } catch (Exception unused) {
                IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
            }
        }
    }

    class q extends Thread {
        q() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            IAPLib.M = true;
            while (true) {
                try {
                    if (System.currentTimeMillis() - IAPLib.R > 1800000 && Device.hasConnectivity() && ((IAPLib.j.B0 == 10 || IAPLib.j.B0 == 11) && !IAPLib.S)) {
                        IAPLib.S = true;
                        IAPLib iAPLib = IAPLib.j;
                        Objects.requireNonNull(iAPLib);
                        new Thread(new y(iAPLib, null)).start();
                        IAPLib.R = System.currentTimeMillis();
                    }
                    Thread.sleep(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
                } catch (Exception unused) {
                    return;
                }
            }
        }
    }

    class r extends Thread {
        final /* synthetic */ int a;
        final /* synthetic */ String b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f2860d;

        class a implements View.OnClickListener {
            final /* synthetic */ boolean a;

            a(boolean z) {
                this.a = z;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.a) {
                    com.gameloft.android2d.iap.utils.g gVar = IAPLib.j.x0.b().k(IAPLib.j.E0.toLowerCase()).get(Integer.valueOf(IAPLib.j.D0));
                    com.gameloft.android2d.iap.billings.a aVarU = gVar.u();
                    int checkedRadioButtonId = ((RadioGroup) IAPLib.j.Q0.findViewById(R.id.RadioGroup1)).getCheckedRadioButtonId();
                    if (checkedRadioButtonId == R.id.RadioButton1) {
                        aVarU.f0(SUtils.getStringRS(R.string.k_WAPCCBilling));
                        gVar.S(SUtils.getStringRS(R.string.k_WAPCCBilling));
                    } else if (checkedRadioButtonId == R.id.RadioButton2) {
                        aVarU.f0(SUtils.getStringRS(R.string.k_WAPPayPalBilling));
                        gVar.S(SUtils.getStringRS(R.string.k_WAPPayPalBilling));
                    } else if (checkedRadioButtonId == R.id.RadioButton3) {
                        aVarU.f0(SUtils.getStringRS(R.string.k_WAPAmazonBilling));
                        gVar.S(SUtils.getStringRS(R.string.k_WAPAmazonBilling));
                    }
                }
                IAPLib.SendRequestExec(IAPLib.j.D0, IAPLib.j.E0, r.this.f2860d);
                IAPLib.j.Q0.cancel();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IAPLib.j.Q0.cancel();
                IAPLib.setResult(10);
                IAPLib.setError(-100);
                IAP_CallBack.IAP_OnPurchaseRequestCancelCallback();
            }
        }

        class c implements DialogInterface.OnKeyListener {
            c() {
            }

            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4 && keyEvent.getAction() == 1) {
                    IAPLib.j.Q0.cancel();
                    IAPLib.setResult(10);
                    IAPLib.setError(-100);
                    IAP_CallBack.IAP_OnPurchaseRequestCancelCallback();
                }
                return true;
            }
        }

        class d implements View.OnClickListener {
            d() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (IAPLib.u0) {
                    return;
                }
                IAPLib.u0 = true;
                int iW = IAPLib.j.x0.b().k(IAPLib.j.E0.toLowerCase()).get(Integer.valueOf(IAPLib.j.D0)).u().w();
                String language = IAPLib.getLanguage();
                String localizedString = SUtils.getLocalizedString(R.string.btn_ok, language);
                if (iW == 17) {
                    localizedString = SUtils.getLocalizedString(R.string.btn_exit, language);
                }
                IAPLib.showTermAndConditionDialog(IAPLib.getShopProfile().C(), IAPLib.GetTermsAndConditions(), localizedString);
            }
        }

        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (IAPLib.u0) {
                    return;
                }
                IAPLib.u0 = true;
                int iW = IAPLib.j.x0.b().k(IAPLib.j.E0.toLowerCase()).get(Integer.valueOf(IAPLib.j.D0)).u().w();
                String language = IAPLib.getLanguage();
                String localizedString = SUtils.getLocalizedString(R.string.btn_ok, language);
                if (iW == 17) {
                    localizedString = SUtils.getLocalizedString(R.string.btn_exit, language);
                }
                IAPLib.showTermAndConditionDialog(IAPLib.getShopProfile().C(), IAPLib.GetTermsAndConditions(), localizedString);
            }
        }

        r(int i, String str, int i2, long j) {
            this.a = i;
            this.b = str;
            this.c = i2;
            this.f2860d = j;
        }

        /* JADX WARN: Removed duplicated region for block: B:73:0x02e5  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x038e  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 1083
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android2d.iap.IAPLib.r.run():void");
        }
    }

    class s extends Thread {
        s() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (IAPLib.j != null && IAPLib.j.Q0 != null) {
                    IAPLib.j.Q0.show();
                    return;
                }
            }
        }
    }

    class t implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ int b;
        final /* synthetic */ long c;

        t(String str, int i, long j) {
            this.a = str;
            this.b = i;
            this.c = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            com.gameloft.android2d.iap.utils.g gVar = IAPLib.j.x0.b().k(this.a.toLowerCase()).get(Integer.valueOf(this.b));
            com.gameloft.android2d.iap.billings.a aVarU = gVar.u();
            int iH = IAPLib.j.x0.b().h();
            int i = aVarU.i(gVar);
            if (i == -1000) {
                return;
            }
            if (i == 403 || i == 429) {
                IAPLib.showIAPLimitationWarning(IAPLib.GetLimitationMessage());
                return;
            }
            IAPLib.j.D0 = this.b;
            IAPLib.j.E0 = this.a;
            String[] strArr = com.gameloft.android2d.iap.a.b;
            RMS.rmsSave(strArr[2], String.valueOf(IAPLib.j.D0));
            RMS.rmsSave(strArr[6], IAPLib.j.E0);
            RMS.saveLastPrice(aVarU.A());
            RMS.saveLastProfileID(aVarU.C());
            RMS.saveLastCurrency(aVarU.v());
            long virtualCurrency = this.c;
            if (virtualCurrency <= 0) {
                virtualCurrency = IAPLib.getVirtualCurrency(this.b, this.a);
            }
            RMS.saveLastVirtualCurrency(String.valueOf(virtualCurrency));
            RMS.saveLastOfflineItems(gVar.e());
            RMS.rms_SaveInfo(gVar.K(), 50);
            RMS.saveVerificationInformation(aVarU);
            RMS.saveLastFlowType(iH);
            RMS.saveLastPackOrderPurchased(IAPLib.getPackOrderPurchased(this.b, this.a));
            RMS.rms_SaveInfo(IAPLib.getItemJson(gVar.v()), 58);
            RMS.rms_SaveInfo(aVarU.c(), 52);
            RMS.rms_SaveInfo(String.valueOf(IAPLib.getOldVirtualCurrency(this.b, this.a)), 54);
            aVarU.a0(gVar.x());
            aVarU.p(gVar.x());
            if (this.a.toLowerCase().equals(SUtils.getStringRS(R.string.k_ItemBundle).toLowerCase())) {
                RMS.saveLastPurchasedBundleInfo(IAPLib.GetBundleItemInfo(this.b, this.a));
            } else if (this.a.toLowerCase().equals(SUtils.getStringRS(R.string.k_ItemSubscription).toLowerCase())) {
                RMS.saveLastPurchasedSubscriptionItemInfo(IAPLib.GetSubscriptionItemInfo(this.b, this.a));
                RMS.saveLastPurchasedSubscriptionRewardItemInfo(IAPLib.GetSubscriptionRewardItemInfo(this.b, this.a));
            }
            Looper.loop();
        }
    }

    class u implements Runnable {
        final /* synthetic */ String a;

        u(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.gameloft.android2d.iap.billings.a aVarCreateBilling = BillingFactory.CreateBilling(this.a);
            if (TextUtils.isEmpty(IAPLib.GetTransactionID())) {
                aVarCreateBilling.h();
            } else {
                aVarCreateBilling.k(false);
            }
        }
    }

    class v extends Thread {
        final /* synthetic */ boolean a;
        final /* synthetic */ int b;
        final /* synthetic */ com.gameloft.android2d.iap.billings.a c;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.gameloft.android2d.iap.billings.a aVar = v.this.c;
                aVar.p(aVar.Z());
                IAPLib.j.Q0.dismiss();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IAPLib.j.Q0.dismiss();
                IAPLib.setResult(2);
                IAPLib.setError(-100);
            }
        }

        class c implements DialogInterface.OnKeyListener {
            c() {
            }

            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                if (i == 4 && keyEvent.getAction() == 1) {
                    IAPLib.j.Q0.dismiss();
                    IAPLib.setResult(2);
                    IAPLib.setError(-100);
                }
                return true;
            }
        }

        v(boolean z, int i, com.gameloft.android2d.iap.billings.a aVar) {
            this.a = z;
            this.b = i;
            this.c = aVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String localizedString;
            String localizedString2;
            String localizedString3;
            if (IAPLib.j.N0 == null || !IAPLib.j.N0.equalsIgnoreCase("ar")) {
                localizedString = SUtils.getLocalizedString(R.string.cnt_resend_confirmation_india);
                localizedString2 = SUtils.getLocalizedString(R.string.btn_yes);
                localizedString3 = SUtils.getLocalizedString(R.string.btn_no);
            } else {
                localizedString = SUtils.getLocalizedString(R.string.cnt_resend_confirmation_india_ar);
                localizedString2 = SUtils.getLocalizedString(R.string.btn_yes_ar);
                localizedString3 = SUtils.getLocalizedString(R.string.btn_no_ar);
            }
            if (this.a && this.b != 7) {
                localizedString = SUtils.getLocalizedString(R.string.resend_MO_confirmation).replace("\\n", System.getProperty("line.separator"));
            }
            if (IAPLib.j.N0 != null && IAPLib.j.N0.equalsIgnoreCase("th")) {
                localizedString = localizedString.replace("|", "");
            }
            int i = SUtils.getContext().getResources().getConfiguration().orientation == 1 ? 10 : 7;
            IAPLib.j.Q0 = null;
            IAPLib.j.Q0 = new Dialog(IAPLib.j.P0);
            IAPLib.j.Q0.requestWindowFeature(1);
            IAPLib.j.Q0.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            IAPLib.j.Q0.setContentView(R.layout.iap_layout_osconfirmation);
            IAPLib.j.Q0.setCancelable(false);
            IAPLib.j.Q0.setTitle((CharSequence) null);
            Button button = (Button) IAPLib.j.Q0.findViewById(R.id.button1);
            Button button2 = (Button) IAPLib.j.Q0.findViewById(R.id.button2);
            TextView textView = (TextView) IAPLib.j.Q0.findViewById(R.id.textView1);
            LinearLayout linearLayout = (LinearLayout) IAPLib.j.Q0.findViewById(R.id.TextLayout);
            int width = ((WindowManager) SUtils.getContext().getSystemService("window")).getDefaultDisplay().getWidth();
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            if (width > 700 && SUtils.getContext().getResources().getConfiguration().orientation == 2) {
                layoutParams.width = (width * 70) / 100;
            }
            textView.setMaxLines(i);
            textView.setTextSize(16.0f);
            textView.setMovementMethod(ScrollingMovementMethod.getInstance());
            textView.setText(localizedString);
            button2.setText(localizedString2);
            button.setText(localizedString3);
            button2.setTransformationMethod(null);
            button.setTransformationMethod(null);
            button2.setOnClickListener(new a());
            button.setOnClickListener(new b());
            IAPLib.j.Q0.setOnKeyListener(new c());
        }
    }

    class w extends Thread {
        w() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (IAPLib.j != null && IAPLib.j.Q0 != null) {
                    IAPLib.j.Q0.show();
                    return;
                }
            }
        }
    }

    class x extends Thread {
        final /* synthetic */ String a;

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.cancel();
            }
        }

        x(String str) {
            this.a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(SUtils.getContext()).create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.setMessage(this.a);
            alertDialogCreate.setButton("OK", new a());
            alertDialogCreate.show();
        }
    }

    private class y implements Runnable {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Looper.prepare();
                try {
                    BillingFactory.CreateBilling(SUtils.getStringRS(R.string.k_GoogleBilling)).b();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                Looper.loop();
            }
        }

        private y() {
        }

        /* synthetic */ y(IAPLib iAPLib, k kVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (Device.hasConnectivity() && (IAPLib.p.equals(SUtils.getStringRS(R.string.k_IAPGoogleBilling)) || IAPLib.p.equals(SUtils.getStringRS(R.string.k_IAPBlackBerryBilling)) || IAPLib.p.equals(SUtils.getStringRS(R.string.k_IAPAmazonBilling)) || IAPLib.p.equals(SUtils.getStringRS(R.string.k_IAPBazaarBilling)) || IAPLib.p.equals(SUtils.getStringRS(R.string.k_IAPYandexBilling)) || IAPLib.p.equals(SUtils.getStringRS(R.string.k_IAPGooglePlayBilling)))) {
                    IAPLib.downloadHKServices();
                }
                long unused = IAPLib.B = SystemClock.elapsedRealtime();
                if (!IAPLib.this.x0.c(IAPLib.this.I0)) {
                    IAPLib.setResult(11);
                    IAPLib.setError(-6);
                } else if (IAPLib.this.x0.b().I()) {
                    IAPLib.setResult(11);
                    IAPLib.setError(-7);
                } else {
                    long unused2 = IAPLib.A = SUtils.computeCountDownTime(IAPLib.GetPromoEndTime(), IAPLib.GetServerTime());
                    IAPLib.resumeLastModuleStateAfterRefreshFeed();
                    new Thread(new a()).start();
                }
            } catch (Exception unused3) {
                IAPLib.setResult(11);
                IAPLib.setError(-6);
            }
        }
    }

    private IAPLib() {
    }

    public static void AddNCIReceipts(String str) {
        try {
            v0.put(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    public static void AllowLoadFeedAgain() {
        s = false;
        T = "";
    }

    public static boolean CheckAvailable() {
        return j.y0 && !RMS.isDemoBuild();
    }

    public static int CheckFreemiumLimitation(com.gameloft.android2d.iap.utils.g gVar) {
        String strE = j.x0.b().E();
        if (isLegacyBetaStatus()) {
            strE = SUtils.getStringRS(R.string.k_limitValidation_betaurl) + SUtils.getPortalName() + o2.i.c + SUtils.getStringRS(R.string.k_getParamD) + o2.i.b + encodeString(getDownloadCode());
        }
        com.gameloft.android2d.iap.billings.a aVarU = gVar.u();
        String str = "|" + gVar.x() + "|" + aVarU.A() + "|" + aVarU.v() + "|" + getLanguage().toLowerCase(Locale.US) + "|" + getUnlockCode();
        XPlayer xPlayer = new XPlayer(new Device(aVarU.E(), aVarU.D()), true);
        xPlayer.m(strE, str);
        while (!xPlayer.i()) {
            try {
                Thread.sleep(50L);
            } catch (Exception unused) {
            }
        }
        if (xPlayer.g() != 403 && xPlayer.g() != 429) {
            return xPlayer.g() != 0 ? -1000 : 0;
        }
        IAP_CallBack.IAP_OnLimitRequestCallback(xPlayer.f("code"));
        SetLimitationMessage(xPlayer.f("message"));
        SetLimitationNextTransactionTime(xPlayer.f("next_transaction_time"));
        SetLimitationSecondsBeforeNextTransaction(xPlayer.f("seconds_before_next_transaction"));
        return xPlayer.g();
    }

    public static boolean CheckItemIsHidden(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return true;
            }
            return Boolean.valueOf(gVar.m("hidden")).booleanValue();
        } catch (Exception unused) {
            return true;
        }
    }

    public static void CheckPendingVerification() {
        try {
            if (O) {
                O = false;
                return;
            }
            int iGetPackageIDPurchased = GetPackageIDPurchased();
            String strGetPackageTypePurchased = GetPackageTypePurchased();
            if (iGetPackageIDPurchased < 0 || strGetPackageTypePurchased == null) {
                return;
            }
            String lastBillingType = RMS.getLastBillingType();
            if (SUtils.isValidString(lastBillingType)) {
                com.gameloft.android2d.iap.billings.a aVarCreateBilling = BillingFactory.CreateBilling(lastBillingType);
                if (!aVarCreateBilling.X() && aVarCreateBilling.Y()) {
                    if (Device.hasConnectivity()) {
                        aVarCreateBilling.k(false);
                    } else {
                        setResult(11);
                        setError(-1);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void CheckRedeem() {
        if (!n0) {
            new Thread(new o()).start();
        } else {
            setResult(10);
            setError(0);
        }
    }

    public static void CheckWPLimitation(String str, HashMap<String, String> map) {
        String string;
        IABRequestHandler iABRequestHandler = IABRequestHandler.getInstance();
        try {
            string = new JSONObject(map).toString();
        } catch (Exception unused) {
            string = "";
        }
        iABRequestHandler.d(str, "", string, new j());
    }

    public static void CleanNonConsumeItems() {
    }

    public static void Clear() {
        RMS.saveNotifyID("");
        RMS.saveDevPayload("");
        RMS.savePendingTransactionResult("");
        RMS.saveUserID("");
        RMS.saveOrderID("");
        RMS.saveSku("");
        RMS.saveWAPPurchaseID("");
    }

    public static String CorrectTextConfirmation(String str, com.gameloft.android2d.iap.utils.g gVar) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.replace("<formatted_price>", gVar.u().y()).replace("<shortcode>", gVar.u().F()).replace("<virtual_currency_name>", gVar.D()).replace("<content_name>", gVar.D()).replace("<iap_pack_amount>", gVar.s() + "");
        } catch (Exception unused) {
            return str;
        }
    }

    public static void EShowRegionOperatorSelection() {
    }

    public static String GetBillingType(int i2) {
        return GetBillingType(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static String GetBillingType(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.u().t();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetBundleItemInfo(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.p();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetCRMUrl() {
        String stringRS = "";
        try {
            if (SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADCRMEnvironmnent)).equalsIgnoreCase(SUtils.getStringRS(R.string.k_BetaCRM))) {
                stringRS = SUtils.getStringRS(R.string.k_BetaCRMURL);
            } else if (SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADCRMEnvironmnent)).equalsIgnoreCase(SUtils.getStringRS(R.string.k_GoldCRM))) {
                stringRS = SUtils.getStringRS(R.string.k_CRMURL);
            }
        } catch (Exception unused) {
        }
        return stringRS;
    }

    public static String GetConfigStoreName() {
        IAPLib iAPLib = j;
        return iAPLib.x0.b() != null ? iAPLib.x0.b().a() : "";
    }

    public static String GetCountryISO() {
        String simCountry = Utils.getSimCountry();
        return (simCountry == null || simCountry.equals("")) ? Utils.getDeviceCountry() : simCountry;
    }

    public static void GetFeed() {
        IAPLib iAPLib = j;
        if (!iAPLib.H0) {
            setResult(11);
            setError(-8);
            return;
        }
        if (getDemoCode() == null || getDemoCode().equals("")) {
            setResult(11);
            setError(-15);
            return;
        }
        if (Y.length() == 0) {
            setResult(11);
            setError(-22);
            return;
        }
        if (s) {
            setResult(10);
            setError(0);
            if (checkMessageSent()) {
                setResult(2);
            }
            new Thread(new k()).start();
            return;
        }
        T = "";
        R = System.currentTimeMillis();
        Objects.requireNonNull(iAPLib);
        new Thread(new y(iAPLib, null)).start();
        if (L && !M) {
            new q().start();
        }
        setResult(9);
    }

    public static int GetHiddenItemNumber(String str) {
        try {
            Hashtable<Integer, com.gameloft.android2d.iap.utils.g> hashtableK = j.x0.b().k(str.toLowerCase());
            Enumeration<Integer> enumerationKeys = hashtableK.keys();
            int i2 = 0;
            while (enumerationKeys.hasMoreElements()) {
                if (Boolean.valueOf(hashtableK.get(enumerationKeys.nextElement()).m("hidden")).booleanValue()) {
                    i2++;
                }
            }
            return i2;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String GetIAPKey(String str) {
        try {
            if (X.has(str)) {
                return X.getString(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetItemCategoryTag(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.z();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetItemContentID(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.x();
        } catch (Exception unused) {
            return null;
        }
    }

    public static Image GetItemImage(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.M();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetItemName(int i2) {
        return GetItemName(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static String GetItemName(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.D();
        } catch (Exception unused) {
            return null;
        }
    }

    public static int GetItemNumber() {
        return GetItemNumber(SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static int GetItemNumber(String str) {
        try {
            Hashtable<Integer, com.gameloft.android2d.iap.utils.g> hashtableK = j.x0.b().k(str.toLowerCase());
            Enumeration<Integer> enumerationKeys = hashtableK.keys();
            int i2 = 0;
            while (enumerationKeys.hasMoreElements()) {
                if (!Boolean.valueOf(hashtableK.get(enumerationKeys.nextElement()).m("hidden")).booleanValue()) {
                    i2++;
                }
            }
            return i2;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String GetItemTrackingUID(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.K();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetLastBillingType() {
        return RMS.getLastBillingType();
    }

    public static String GetLastCarrierNamePurchased() {
        return RMS.rms_LoadInfo(52);
    }

    public static String GetLastContentIdPurchased() {
        return RMS.getLastContentID();
    }

    public static String GetLastFormattedPricePurchased() {
        return RMS.getLastFormattedPrice();
    }

    public static String GetLastItemJsonPurchased() {
        return RMS.rms_LoadInfo(58);
    }

    public static String GetLastItemTrackingUIDPurchased() {
        return RMS.getLastItemTrackingUID();
    }

    public static String[] GetLastOfflineItemsPurchased() {
        return RMS.getLastOfflineItems();
    }

    public static float GetLastPriceValuePurchased() {
        return SUtils.parseFloatNumber(RMS.getLastPrice());
    }

    public static String GetLastPurchasedBundleInfo() {
        return RMS.getLastPurchasedBundleInfo();
    }

    public static String GetLastPurchasedSubscriptionItemInfo() {
        return RMS.getLastPurchasedSubscriptionItemInfo();
    }

    public static String GetLastPurchasedSubscriptionRewardItemInfo() {
        return RMS.getLastPurchasedSubscriptionRewardItemInfo();
    }

    public static long GetLastVirtualCurrencyPurchased() {
        return RMS.getLastVirtualCurrency();
    }

    public static String GetLimitationMessage() {
        return U;
    }

    public static String GetLimitationNextTransactionTime() {
        return V;
    }

    public static String GetLimitationSecondsBeforeNextTransaction() {
        return W;
    }

    public static void GetLimitsValidation() {
        if (!Device.hasConnectivity()) {
            IAP_CallBack.IAP_GetLimitsValidationCB(false);
            return;
        }
        IAPLib iAPLib = j;
        String strG = iAPLib.x0.b() != null ? iAPLib.x0.b().g() : "";
        if (!SUtils.isValidString(strG)) {
            strG = SUtils.getStringRS(R.string.k_checklimit_url);
        }
        if (isLegacyBetaStatus() || !SUtils.isValidString(strG)) {
            strG = SUtils.getStringRS(R.string.k_checklimit_betaurl);
        }
        String str = strG + SUtils.getShopName();
        IABRequestHandler.getInstance();
        StringBuffer stringBuffer = new StringBuffer();
        String strIAP_GetCRMUrl = Links.IAP_GetCRMUrl();
        stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getParamActionCheckLimit));
        stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getParamShop) + o2.i.b + SUtils.getShopName());
        String string = stringBuffer.toString();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SUtils.getStringRS(R.string.k_headerXApp), getDemoCode());
        } catch (JSONException unused) {
        }
        IABRequestHandler.getInstance().d(strIAP_GetCRMUrl, string, jSONObject.toString(), new f());
    }

    public static void GetListItemsRestore() {
        IAPLib iAPLib = j;
        if (iAPLib.x0.b() == null || iAPLib.x0.b().I()) {
            IAP_CallBack.IAP_GetListItemsRestoreCB(null);
            IAP_CallBack.IAP_GetListInfoRestoreCB(null);
            setResult(10);
        } else {
            e0 = new HashSet();
            f0 = new HashSet();
            RMS.rms_SaveInfo("", 60);
            RMS.rms_SaveInfo("", 61);
            iAPLib.P0.runOnUiThread(new h());
        }
    }

    public static void GetListItemsRestoreCB() {
        String[] strArr;
        Set<String> set = e0;
        String[] strArr2 = null;
        if (set == null) {
            IAP_CallBack.IAP_GetListItemsRestoreCB(null);
            IAP_CallBack.IAP_GetListInfoRestoreCB(null);
            setResult(10);
            return;
        }
        if (set.isEmpty()) {
            strArr = null;
        } else {
            Set<String> set2 = e0;
            strArr = (String[]) set2.toArray(new String[set2.size()]);
        }
        if (strArr != null) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
            }
        }
        IAP_CallBack.IAP_GetListItemsRestoreCB(strArr);
        Set<String> set3 = f0;
        if (set3 != null) {
            if (!set3.isEmpty()) {
                Set<String> set4 = f0;
                strArr2 = (String[]) set4.toArray(new String[set4.size()]);
            }
            if (strArr2 != null) {
                for (int i3 = 0; i3 < strArr2.length; i3++) {
                }
            }
            IAP_CallBack.IAP_GetListInfoRestoreCB(strArr2);
        }
    }

    public static JSONArray GetNCIReceipts() {
        return v0;
    }

    public static String[] GetOfflineItems(int i2) {
        return GetOfflineItems(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static String[] GetOfflineItems(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.e();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetOldContentId(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.u().e();
        } catch (Exception unused) {
            return null;
        }
    }

    public static int GetPackageIDPurchased() {
        IAPLib iAPLib = j;
        if (iAPLib.D0 == -1) {
            iAPLib.D0 = RMS.getPackageId();
        }
        return iAPLib.D0;
    }

    public static int GetPackageIDPurchasedNTier() {
        return getIndexOfPricepoint(GetPackageIDPurchased(), GetPackageTypePurchased());
    }

    public static String GetPackageTypePurchased() {
        IAPLib iAPLib = j;
        return iAPLib.E0.equals("") ? RMS.getPackageType() : iAPLib.E0;
    }

    public static String GetParamIAPObject(String str, String str2) {
        try {
            return Y.getJSONObject(str.toLowerCase()).getString(str2);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String GetPrice(int i2) {
        return GetPrice(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static String GetPrice(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.u().x();
        } catch (Exception unused) {
            return null;
        }
    }

    public static int GetPricePoint(int i2) {
        return GetPricePoint(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static int GetPricePoint(int i2, String str) {
        int iR = -1;
        try {
            if (str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCash))) {
                iR = j.x0.b().t(i2);
            } else if (str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCoin))) {
                iR = j.x0.b().u(i2);
            } else if (str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemBundle))) {
                iR = j.x0.b().s(i2);
            } else if (str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemSubscription))) {
                iR = j.x0.b().v(i2);
            } else {
                IAPLib iAPLib = j;
                if (iAPLib.x0.b().H(str)) {
                    iR = iAPLib.x0.b().r(str);
                }
            }
        } catch (Exception unused) {
        }
        return iR;
    }

    public static float GetPriceValue(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return -1.0f;
            }
            return SUtils.parseFloatNumber(gVar.u().A());
        } catch (Exception unused) {
            return -1.0f;
        }
    }

    public static String GetProfilesStatus() {
        String strRms_LoadInfo = RMS.rms_LoadInfo(44);
        return (strRms_LoadInfo == null || strRms_LoadInfo.equals("")) ? "0" : strRms_LoadInfo;
    }

    public static String GetPromoDescription() {
        return j.x0.b().w();
    }

    public static int GetPromoEffectiveDiscount(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return 0;
            }
            return (int) Float.parseFloat(gVar.m("effective_discount"));
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int GetPromoEffectiveDiscountAmount(int i2, String str) {
        try {
            if (j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2)) == null) {
                return 0;
            }
            return Math.round(((r5.s() - r5.t()) * 100) / r5.t());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int GetPromoEffectiveDiscountPrice(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return 0;
            }
            float floatNumber = SUtils.parseFloatNumber(gVar.u().A());
            float floatNumber2 = SUtils.parseFloatNumber(gVar.G());
            return Math.round(((floatNumber - floatNumber2) * 100.0f) / floatNumber2);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String GetPromoEndTime() {
        if (c0) {
            return null;
        }
        try {
            String strY = j.x0.b().y();
            if (strY == null) {
                return null;
            }
            return strY;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetPromoOldPrice(int i2) {
        return GetPromoOldPrice(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static String GetPromoOldPrice(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.F();
        } catch (Exception unused) {
            return null;
        }
    }

    public static float GetPromoOldPriceValue(int i2, String str) {
        String strG;
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar != null && (strG = gVar.G()) != null && !strG.equals("")) {
                return SUtils.parseFloatNumber(strG);
            }
        } catch (Exception unused) {
        }
        return -1.0f;
    }

    public static String GetPurchaseReceipt(String str) {
        if (str != null && str.length() > 0) {
            try {
                JSONArray jSONArrayGetNCIReceipts = GetNCIReceipts();
                for (int i2 = 0; i2 < jSONArrayGetNCIReceipts.length(); i2++) {
                    if (jSONArrayGetNCIReceipts.getJSONObject(i2).getString(InAppPurchaseMetaData.KEY_PRODUCT_ID).equals(str)) {
                        return jSONArrayGetNCIReceipts.getJSONObject(i2).toString();
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String GetPurchaseReceipts() {
        return RMS.rms_LoadInfo(47);
    }

    public static String GetRestoreCertificate() {
        return RMS.rms_LoadInfo(61);
    }

    public static String GetRestoreTransactionID() {
        return RMS.rms_LoadInfo(60);
    }

    public static long GetServerRealTime() {
        return (SUtils.parseLongNumber(GetServerTime()) + (SystemClock.elapsedRealtime() - B)) - AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS;
    }

    public static String GetServerTime() {
        String strZ = j.x0.b().z();
        if (c0) {
            return null;
        }
        return TextUtils.isEmpty(strZ) ? String.valueOf(System.currentTimeMillis()) : strZ;
    }

    public static int GetSpecialFlow() {
        try {
            int iH = j.x0.b().h();
            if (iH == 17 || iH == 16) {
                return iH;
            }
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int GetSpecialPackageRequirement(int i2) {
        return GetSpecialPackageRequirement(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static int GetSpecialPackageRequirement(int i2, String str) {
        return 0;
    }

    public static String GetSubscriptionItemInfo(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.I();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetSubscriptionRewardItemInfo(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.J();
        } catch (Exception unused) {
            return null;
        }
    }

    public static void GetSubscriptionStatus(String str) {
        IAPLib iAPLib = j;
        if (iAPLib.x0.b() == null || iAPLib.x0.b().I()) {
            IAP_CallBack.IAP_GetSubscriptionStatusCB(null);
        } else {
            iAPLib.P0.runOnUiThread(new p(str));
        }
    }

    public static String GetTermsAndConditions() {
        com.gameloft.android2d.iap.utils.g gVarNextElement;
        try {
            Hashtable<String, Hashtable<Integer, com.gameloft.android2d.iap.utils.g>> hashtableF = j.x0.b().f();
            Enumeration<String> enumerationKeys = hashtableF.keys();
            if (enumerationKeys == null) {
                return null;
            }
            while (enumerationKeys.hasMoreElements()) {
                String strNextElement = enumerationKeys.nextElement();
                if (strNextElement != null && !strNextElement.equals("")) {
                    Enumeration<com.gameloft.android2d.iap.utils.g> enumerationElements = hashtableF.get(strNextElement).elements();
                    if (enumerationElements.hasMoreElements() && (gVarNextElement = enumerationElements.nextElement()) != null) {
                        return gVarNextElement.u().H();
                    }
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetTermsAndConditions(int i2) {
        return GetTermsAndConditions(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static String GetTermsAndConditions(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.u().H();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String GetTransactionID() {
        return RMS.getTransactionID();
    }

    public static void GetUpdateProfileInfo() {
        IAPLib iAPLib = j;
        iAPLib.x0.d();
        if (iAPLib.x0.b().I()) {
            setResult(11);
            setError(-7);
        } else {
            B = SystemClock.elapsedRealtime();
            A = SUtils.computeCountDownTime(GetPromoEndTime(), GetServerTime());
        }
    }

    public static int Get_HDIDFV_Update() {
        if (j != null) {
            return J;
        }
        return 0;
    }

    public static void Init() {
        Utils.setContext(com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils.getActivity());
        Init(Utils.getActivity(), com.gameloft.android2d.iap.wrapper.a.i, com.gameloft.android2d.iap.wrapper.a.j, com.gameloft.android2d.iap.wrapper.a.k, com.gameloft.android2d.iap.wrapper.a.l, com.gameloft.android2d.iap.wrapper.a.m, com.gameloft.android2d.iap.wrapper.a.n, com.gameloft.android2d.iap.wrapper.a.o, com.gameloft.android2d.iap.wrapper.a.p, com.gameloft.android2d.iap.wrapper.a.q, com.gameloft.android2d.iap.wrapper.a.r, com.gameloft.android2d.iap.wrapper.a.s, com.gameloft.android2d.iap.wrapper.a.t, com.gameloft.android2d.iap.wrapper.a.u, com.gameloft.android2d.iap.wrapper.a.v, com.gameloft.android2d.iap.wrapper.a.w, com.gameloft.android2d.iap.wrapper.a.x, com.gameloft.android2d.iap.wrapper.a.y, com.gameloft.android2d.iap.wrapper.a.z);
    }

    public static void Init(Activity activity, boolean z2, String str, boolean z3, boolean z4, int i2, boolean z5, String str2, boolean z6, boolean z7, boolean z8, boolean z9, int i3, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        IAPLib iAPLib = j;
        I = z9;
        J = i3;
        b0 = z15;
        if (Build.VERSION.SDK_INT > 22) {
            J = 2;
        }
        SUtils.setContext(activity);
        iAPLib.P0 = (Activity) SUtils.getContext();
        iAPLib.J0 = z2;
        iAPLib.K0 = z3;
        iAPLib.L0 = z4;
        iAPLib.M0 = i2;
        InitIAPKeys();
        InitIAPObjects();
        checkMessageSent();
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.US;
        iAPLib.N0 = language.toLowerCase(locale2);
        iAPLib.O0 = locale.toString().toLowerCase(locale2);
        iAPLib.I0 = SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADDynamicFeedURL));
        iAPLib.C0 = SUtils.GetSerialKey();
        iAPLib.A0 = SUtils.GetVersionNumber();
        String unlockCode = getUnlockCode();
        iAPLib.F0 = unlockCode;
        if (unlockCode.equals("")) {
            String uniqueCode = SUtils.getUniqueCode(1000, 9999);
            iAPLib.F0 = uniqueCode;
            RMS.rmsSave(com.gameloft.android2d.iap.a.b[1], uniqueCode);
        }
        m = str;
        K = z13;
        L = z14;
        M = false;
        o = z5;
        p = str2;
        q = z6;
        r = z7;
        D = z8;
        E = z11;
        F = z12;
        if (!isCreditCardEnabled()) {
            r = true;
            D = false;
            E = false;
            F = false;
        }
        String jADProperty = SUtils.getJADProperty(SUtils.getStringRS(R.string.k_Legacy_Beta_Flag));
        h0 = jADProperty != null && jADProperty.equals("1");
        if (z10) {
            P = true;
            Q = true;
        }
        iAPLib.H0 = true;
        s = false;
        if (l != null) {
            l += "";
        }
        iAPLib.x0 = new ServerInfo();
        Z = SUtils.getStringRS(R.string.k_accepEcomCRM19);
        a0 = ShareTarget.ENCODING_TYPE_URL_ENCODED;
        Device.InitDeviceValues();
        w = false;
    }

    public static void InitIAPKeys() {
        try {
            X = new JSONObject();
            JSONObject jSONObject = new JSONObject(XXTEA.DecryptString(new String(SUtils.readAsset(SUtils.getStringRS(R.string.k_IAPKeysFile), false)), SUtils.KeyGenerator(SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameProductId)), 2)));
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String string = itKeys.next().toString();
                X.put(string, XXTEA.DecryptString(jSONObject.getString(string), SUtils.KeyGenerator(SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameProductId)), 1)));
            }
        } catch (Exception unused) {
        }
    }

    public static void InitIAPObjects() {
        try {
            Y = new JSONObject();
            JSONArray jSONArray = new JSONArray(new String(XXTEA.MD5Decryp(SUtils.readAsset(SUtils.getStringRS(R.string.k_IAPObjectsFile), false), GetIAPKey(SUtils.getStringRS(R.string.k_kdefaultKey)))));
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                Y.putOpt(jSONObject.getString("id").toLowerCase(), jSONObject);
            }
        } catch (Exception unused) {
        }
    }

    public static boolean IsDebug() {
        if (j != null) {
            return I;
        }
        return false;
    }

    public static boolean IsEnableSMSEncryption() {
        return P;
    }

    public static boolean IsLastPurchaseRedeem() {
        String strRms_LoadInfo = RMS.rms_LoadInfo(59);
        return strRms_LoadInfo != null && strRms_LoadInfo.equals("1");
    }

    public static boolean IsLastPurchaseRestore() {
        String strRms_LoadInfo = RMS.rms_LoadInfo(62);
        return strRms_LoadInfo != null && strRms_LoadInfo.equals("1");
    }

    public static boolean IsLastPurchaseSubscription() {
        String strRms_LoadInfo = RMS.rms_LoadInfo(63);
        return strRms_LoadInfo != null && strRms_LoadInfo.equals("1");
    }

    public static boolean IsUseWPIAP() {
        return Q;
    }

    public static boolean NewVerifyRequest(int i2) {
        return VerifyProcess(verifyRequest(i2));
    }

    public static boolean NewVerifyRequest(String str) {
        return VerifyProcess(verifyRequest(str));
    }

    public static void SendRequest(int i2) {
        SendRequest(i2, SUtils.getStringRS(R.string.k_ItemCash), 0L);
    }

    public static void SendRequest(int i2, long j2) {
        SendRequest(i2, SUtils.getStringRS(R.string.k_ItemCash), j2);
    }

    public static void SendRequest(int i2, String str) {
        SendRequest(i2, str, 0L);
    }

    public static void SendRequest(int i2, String str, long j2) {
        try {
            setResult(1);
            IAPLib iAPLib = j;
            iAPLib.D0 = i2;
            iAPLib.E0 = str;
            com.gameloft.android2d.iap.utils.g gVar = iAPLib.x0.b().k(iAPLib.E0.toLowerCase()).get(Integer.valueOf(iAPLib.D0));
            int iW = gVar.u().w();
            String strGetBillingType = GetBillingType(i2, str);
            String strC = gVar.C();
            boolean z2 = !(strC == null || strC.equals("0")) || gVar.L().equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemBundle));
            if ((SUtils.getStringRS(R.string.k_HTTPBilling).equals(strGetBillingType) || SUtils.getStringRS(R.string.k_SMSBilling).equals(strGetBillingType) || isCCBilling(strGetBillingType)) && ((iW != 255 || isCCBilling(strGetBillingType)) && ((iW != 0 || isCCBilling(strGetBillingType) || z2) && ((iW != 0 || isCCBilling(strGetBillingType) || !z2 || (!G && !H)) && !RMS.isRedeemUnlocked() && (!isCCBilling(strGetBillingType) || gVar.o() != 1))))) {
                iAPLib.P0.runOnUiThread(new r(i2, str, iW, j2));
                iAPLib.P0.runOnUiThread(new s());
                return;
            }
            SendRequestExec(iAPLib.D0, iAPLib.E0, j2);
        } catch (Exception unused) {
            setResult(3);
        }
    }

    public static void SendRequest(String str, long j2) {
        try {
            com.gameloft.android2d.iap.utils.g gVarI = j.x0.b().i(str);
            SendRequest(SUtils.parseIntNumber(gVarI.u().B()), gVarI.L(), j2);
        } catch (Exception unused) {
            setResult(3);
        }
    }

    public static void SendRequestExec(int i2, String str, long j2) {
        try {
            if (isTransactionInProgress()) {
                return;
            }
            if (!RMS.isRedeemUnlocked()) {
                IAP_CallBack.IAP_OnPurchaseRequestSentCallback();
            }
            markTransactionInProgressStatus();
            setResult(1);
            new Thread(new t(str, i2, j2)).start();
        } catch (Exception unused) {
            setResult(3);
        }
    }

    public static void SetLimitationMessage(String str) {
        U = str.replace("|", "");
    }

    public static void SetLimitationNextTransactionTime(String str) {
        V = str;
    }

    public static void SetLimitationSecondsBeforeNextTransaction(String str) {
        W = str;
    }

    public static void SetPurchaseReceipts(String str) {
        RMS.rms_SaveInfo(str, 47);
    }

    public static int Update() {
        IAPLib iAPLib = j;
        int i2 = iAPLib.B0;
        if (!iAPLib.H0) {
            return i2;
        }
        checkMessageSent();
        if (i2 == 3 || i2 == 7) {
            iAPLib.B0 = 0;
            RMS.rmsSave(com.gameloft.android2d.iap.a.b[5], "0");
            clearTransactionInProgressStatus();
            if (i2 == 7) {
                saveMoneySpentInfo();
            }
            if (i2 != 3 || getError() != -1) {
                Clear();
            }
        } else if (i2 == 11) {
            iAPLib.B0 = 0;
        } else if (i2 == 0) {
            RMS.rmsSave(com.gameloft.android2d.iap.a.b[5], "0");
        }
        return i2;
    }

    public static long UpdatePromoCountDownTime() {
        long jElapsedRealtime = (A - (SystemClock.elapsedRealtime() - B)) + AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS;
        if (C > 0 && jElapsedRealtime <= 0) {
            AllowLoadFeedAgain();
        }
        C = jElapsedRealtime;
        return jElapsedRealtime;
    }

    public static boolean VerifyProcess(boolean z2) {
        if (z2) {
            if (Device.hasConnectivity()) {
                String lastBillingType = RMS.getLastBillingType();
                if (SUtils.isValidString(lastBillingType)) {
                    setResult(1);
                    new Thread(new u(lastBillingType)).start();
                }
            } else {
                setResult(7);
                cleanStatus();
            }
        }
        return z2;
    }

    public static void addRestoreItem(String str) {
        addRestoreItem(str, "", "", "");
    }

    public static void addRestoreItem(String str, com.gameloft.android2d.iap.utils.g gVar, String str2, String str3, String str4) {
        try {
            com.gameloft.android2d.iap.billings.a aVarU = gVar.u();
            if (aVarU != null) {
                aVarU.j(str, str2, str3, str4, true);
            }
        } catch (Exception unused) {
        }
    }

    public static void addRestoreItem(String str, String str2, String str3, String str4) {
        com.gameloft.android2d.iap.billings.a aVarU;
        try {
            IAPLib iAPLib = j;
            if (iAPLib.x0.b() == null || iAPLib.x0.b().I() || (aVarU = iAPLib.x0.b().j(str).u()) == null) {
                return;
            }
            aVarU.j(str, str2, str3, str4, true);
        } catch (Exception unused) {
        }
    }

    public static boolean checkEntryIdItem(String str) {
        try {
            return j.x0.b().i(str) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void checkHKServices() {
        if (p0.isEmpty()) {
            downloadHKServices();
            r0 = 1;
            return;
        }
        try {
            ActivityManager activityManager = (ActivityManager) SUtils.getContext().getSystemService("activity");
            r0 = 0;
            if (Build.VERSION.SDK_INT <= 25) {
                if (activityManager.getRunningServices(Integer.MAX_VALUE).isEmpty()) {
                    r0 = 1;
                    return;
                }
                Iterator<ActivityManager.RunningServiceInfo> it = activityManager.getRunningServices(Integer.MAX_VALUE).iterator();
                while (it.hasNext()) {
                    if (p0.contains(SUtils.SHA256(it.next().service.getClassName() + q0))) {
                        r0 = 1;
                        return;
                    }
                }
            }
            if (activityManager.getRunningAppProcesses().isEmpty()) {
                r0 = 1;
                return;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it2 = activityManager.getRunningAppProcesses().iterator();
            while (it2.hasNext()) {
                if (p0.contains(SUtils.SHA256(it2.next().processName + q0))) {
                    r0 = 1;
                    return;
                }
            }
        } catch (Exception unused) {
            r0 = 1;
        }
    }

    public static boolean checkMessageSent() {
        IAPLib iAPLib = j;
        iAPLib.T0 = RMS.isSMSSent();
        boolean zIsRedeemUnlocked = RMS.isRedeemUnlocked();
        iAPLib.U0 = zIsRedeemUnlocked;
        return iAPLib.T0 || zIsRedeemUnlocked;
    }

    public static void cleanStatus() {
        IAPLib iAPLib = j;
        iAPLib.S0 = false;
        iAPLib.R0 = false;
        String uniqueCode = SUtils.getUniqueCode(1000, 9999);
        iAPLib.F0 = uniqueCode;
        String[] strArr = com.gameloft.android2d.iap.a.b;
        RMS.rmsSave(strArr[1], uniqueCode);
        iAPLib.T0 = false;
        RMS.rmsSave(strArr[0], "0");
        iAPLib.U0 = false;
        RMS.rmsSave(strArr[4], "0");
        RMS.rmsSave(strArr[5], "0");
        clearTransactionInProgressStatus();
    }

    public static void clearTransactionInProgressStatus() {
        t = false;
    }

    public static void crmRestoreInfoNCI(String str, String str2) {
        com.gameloft.android2d.iap.utils.g gVarI;
        try {
            JSONObject jSONObject = new JSONObject(str2);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str);
            jSONObject2.put(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, jSONObject.getString(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER));
            String string = null;
            if (jSONObject.has("id")) {
                jSONObject2.put("id", jSONObject.getString("id"));
                string = jSONObject.getString("id");
            }
            try {
                jSONObject2.put("info", jSONObject.getJSONArray("info"));
            } catch (Exception unused) {
                jSONObject2.put("info", jSONObject.getJSONObject("info"));
                string = jSONObject.getJSONObject("info").getString("id");
            }
            if (string != null && (gVarI = j.x0.b().i(string)) != null) {
                jSONObject2.put("item_type", gVarI.L());
            }
            f0.add(jSONObject2.toString());
        } catch (Exception unused2) {
        }
    }

    public static void crmRestoreNCI(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = new JSONArray();
            try {
                jSONArray = jSONObject.getJSONArray("info");
            } catch (Exception unused) {
                jSONArray.put(jSONObject.getJSONObject("info"));
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                String string = "";
                if (jSONObject2.has("item_type")) {
                    string = jSONObject2.getString("item_type");
                } else if (jSONObject2.has("item")) {
                    string = jSONObject2.getString("item");
                }
                if (!GetParamIAPObject(string, "consumable").equalsIgnoreCase("true") && !e0.contains(string)) {
                    e0.add(string);
                }
            }
        } catch (Exception unused2) {
        }
    }

    static void downloadHKServices() {
        try {
            q0 = GetIAPKey(SUtils.getStringRS(R.string.k_SaltKey));
            if (p0.isEmpty()) {
                XPlayer xPlayer = new XPlayer(new Device(), true);
                xPlayer.n(SUtils.getStringRS(R.string.k_HKURL));
                while (!xPlayer.j()) {
                    try {
                        Thread.sleep(20L);
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    public static int downloadManagedContentsList() {
        try {
            XPlayer xPlayer = new XPlayer(new Device(), true);
            xPlayer.o(SUtils.getStringRS(R.string.k_ManageURL));
            while (!xPlayer.k()) {
                try {
                    Thread.sleep(20L);
                } catch (Exception unused) {
                }
            }
            return xPlayer.g();
        } catch (Exception unused2) {
            return -2;
        }
    }

    static void downloadManagedPurchedItems() {
        IABRequestHandler iABRequestHandler = IABRequestHandler.getInstance();
        StringBuffer stringBuffer = new StringBuffer();
        String strIAP_GetUserCredential = Links.IAP_GetUserCredential();
        if (TextUtils.isEmpty(strIAP_GetUserCredential) || strIAP_GetUserCredential.equalsIgnoreCase("null:null")) {
            strIAP_GetUserCredential = "";
        }
        String strIAP_GetCRMUrl = Links.IAP_GetCRMUrl();
        String str = strIAP_GetCRMUrl.substring(0, strIAP_GetCRMUrl.indexOf("index.php")) + "purchases/";
        stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getParamAccountId) + o2.i.b + encodeString(strIAP_GetUserCredential));
        String deviceId = Device.getDeviceId();
        String deviceId2 = Device.getDeviceId("HDIDFV");
        if (Get_HDIDFV_Update() != 2) {
            stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getParamIMEI) + o2.i.b + encodeString(deviceId));
        }
        if (Get_HDIDFV_Update() != 0) {
            stringBuffer.append(o2.i.c + SUtils.getStringRS(R.string.k_getParamHDIDFV) + o2.i.b + encodeString(deviceId2));
        }
        String str2 = "non_consumables" + stringBuffer.toString();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SUtils.getStringRS(R.string.k_headerCredential), strIAP_GetUserCredential);
            if (Get_HDIDFV_Update() != 2) {
                jSONObject.put(SUtils.getStringRS(R.string.k_headerIMEI), Device.getDeviceId());
            }
            if (Get_HDIDFV_Update() != 0) {
                jSONObject.put(SUtils.getStringRS(R.string.k_headerHDIDFV), Device.getDeviceId("HDIDFV"));
            }
            String strNounceGenerator = CRMUtils.NounceGenerator();
            jSONObject.put(SUtils.getStringRS(R.string.k_headerXApp), getDemoCode());
            jSONObject.put(SUtils.getStringRS(R.string.k_headerXAppVersion), getVersionNumber());
            jSONObject.put(SUtils.getStringRS(R.string.k_headerXAppProductId), Links.IAP_GetProjectId());
            jSONObject.put(SUtils.getStringRS(R.string.k_headerXAppNounce), strNounceGenerator);
            jSONObject.put(SUtils.getStringRS(R.string.k_headerAccept), Z);
            jSONObject.put(SUtils.getStringRS(R.string.k_headerContentType), Z);
            IABRequestHandler.getInstance().j(strNounceGenerator);
        } catch (JSONException unused) {
        }
        IABRequestHandler.getInstance().d(str, str2, jSONObject.toString(), new g(iABRequestHandler));
    }

    public static String encodeString(String str) {
        try {
            return URLEncoder.encode(str, C.UTF8_NAME);
        } catch (Exception unused) {
            return str;
        }
    }

    public static String getAccessToken() {
        return z;
    }

    public static int getAgeUser() {
        int i2 = l0;
        if (i2 > 0) {
            return i2;
        }
        return 0;
    }

    public static String getAnonymousCredential() {
        return y;
    }

    public static String getChannelID() {
        return SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADChannelID));
    }

    public static String getClientID() {
        return f2859g;
    }

    public static String getCustomerURL(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        try {
            String moneySpent = RMS.getMoneySpent();
            if (moneySpent != null) {
                String str2 = str + o2.i.c + SUtils.getStringRS(R.string.k_kCCTotalMoneyParamName) + XXTEA.GetHexString(XXTEA.XXTEA_Encrypt(moneySpent.getBytes(), GetIAPKey(SUtils.getStringRS(R.string.k_kcc))));
                String profileID = RMS.getProfileID();
                if (profileID == null || profileID.equals("")) {
                    str = str2 + o2.i.c + SUtils.getStringRS(R.string.k_kCCCurrencyParamName) + XXTEA.GetHexString(XXTEA.XXTEA_Encrypt(RMS.getLastCurrency().getBytes(), GetIAPKey(SUtils.getStringRS(R.string.k_kcc))));
                } else {
                    str = str2 + o2.i.c + SUtils.getStringRS(R.string.k_kCCProfileIdParamName) + profileID;
                }
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public static String getDatacenter() {
        return i;
    }

    public static String getDemoCode() {
        return SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameCodeIGP));
    }

    public static String getDownloadCode() {
        return j.C0;
    }

    public static String getEntryIdItem(int i2, String str) {
        try {
            return j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2)).v();
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getError() {
        return j.G0;
    }

    public static String getFlowText(int i2, String str, int i3) {
        return null;
    }

    public static String getGameType() {
        String str = m0;
        return str != null ? str.toLowerCase() : "";
    }

    public static String getGoogleDevKey() {
        return GetIAPKey(SUtils.getStringRS(R.string.k_GoogleDeveloperKey));
    }

    public static String getIAPCRMKey() {
        return GetIAPKey(SUtils.getStringRS(R.string.k_CRMKey));
    }

    public static String getIAPLimitationHelp(String str, String str2, String str3, String str4) {
        String string;
        if (!o) {
            return null;
        }
        Locale locale = new Locale(str4);
        Locale.setDefault(locale);
        Configuration configuration = new Configuration();
        configuration.locale = locale;
        SUtils.getContext().getResources().updateConfiguration(configuration, SUtils.getContext().getResources().getDisplayMetrics());
        if (p.equals(SUtils.getStringRS(R.string.k_IAPGoogleBilling))) {
            string = ((Activity) SUtils.getContext()).getString(R.string.HELP_SECTION_GOOGLEPLAY);
            if (string == null || string.equals("")) {
                return "Load text is error!";
            }
        } else {
            if (!p.equals(SUtils.getStringRS(R.string.k_IAPAmazonBilling))) {
                String string2 = (str2 == null || str2.equals("")) ? ((Activity) SUtils.getContext()).getString(R.string.HELP_SECTION_WITHOUT_SOFTCURRENCY) : ((Activity) SUtils.getContext()).getString(R.string.HELP_SECTION);
                return (string2 == null || string2.equals("")) ? "Load text is error!" : getIAPLimitationTextFormated(string2, str, str2, str3);
            }
            string = ((Activity) SUtils.getContext()).getString(R.string.HELP_SECTION_AMAZON);
            if (string == null || string.equals("")) {
                return "Load text is error!";
            }
        }
        return string;
    }

    private static String getIAPLimitationTextFormated(String str, String str2, String str3, String str4) {
        if (str2 == null || str2.equals("") || str4 == null || str4.equals("")) {
            return "gameName and hardCurrencyName must be inputed!";
        }
        String strReplaceAll = str.replaceAll("NameOfTheGame", str2).replaceAll("NameOfTheHardCurrency", str4);
        return (str3 == null || str3.equals("")) ? strReplaceAll : strReplaceAll.replaceAll("NameOfTheSoftCurrency", str3);
    }

    public static String getIAPLimitationWarning(String str) {
        if (!o) {
            return null;
        }
        Locale locale = new Locale(str);
        Locale.setDefault(locale);
        Configuration configuration = new Configuration();
        configuration.locale = locale;
        SUtils.getContext().getResources().updateConfiguration(configuration, SUtils.getContext().getResources().getDisplayMetrics());
        return ((Activity) SUtils.getContext()).getString(R.string.COSTS_REAL_MONEY);
    }

    public static int getIndexOfPricepoint(int i2, String str) {
        if (i2 == -1) {
            return -1;
        }
        int iGetItemNumber = GetItemNumber(str);
        try {
            int i3 = 0;
            if (str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCash))) {
                while (i3 < iGetItemNumber) {
                    if (j.x0.b().t(i3) == i2) {
                        return i3;
                    }
                    i3++;
                }
                return -1;
            }
            if (str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCoin))) {
                while (i3 < iGetItemNumber) {
                    if (j.x0.b().u(i3) == i2) {
                        return i3;
                    }
                    i3++;
                }
            } else if (j.x0.b().H(str)) {
                return i2;
            }
            return -1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static IAPLib getInstance() {
        return j;
    }

    public static int getItemCid(int i2, String str) {
        try {
            return SUtils.parseIntNumber(j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2)).q());
        } catch (Exception unused) {
            return -1;
        }
    }

    public static long getItemCountDownTime(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return -1L;
            }
            String strB = gVar.B();
            if (TextUtils.isEmpty(strB)) {
                return -1L;
            }
            return (SUtils.computeCountDownTime(strB, GetServerTime()) - (SystemClock.elapsedRealtime() - B)) + AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS;
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static String getItemCurrencyISOCode(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.u().v();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getItemGroup(int i2, String str) {
        try {
            return j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2)).w();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getItemJson(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            String strX = gVar.u().x();
            JSONObject jSONObject = new JSONObject(gVar.A());
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("billing_methods");
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    jSONArray.getJSONObject(i3).put("display_price", strX);
                }
                jSONObject.put("billing_methods", jSONArray);
            } catch (Exception unused) {
            }
            return jSONObject.toString();
        } catch (Exception unused2) {
            return null;
        }
    }

    public static String getItemJson(String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVarI = j.x0.b().i(str);
            String strX = gVarI.u().x();
            JSONObject jSONObject = new JSONObject(gVarI.A());
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("billing_methods");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    jSONArray.getJSONObject(i2).put("display_price", strX);
                }
                jSONObject.put("billing_methods", jSONArray);
            } catch (Exception unused) {
            }
            return jSONObject.toString();
        } catch (Exception unused2) {
            return null;
        }
    }

    public static String getItemPromoEndtime(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            return gVar == null ? "" : gVar.B();
        } catch (Exception unused) {
            return "";
        }
    }

    public static int getItemRemaining(int i2, String str) {
        String strM;
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar != null && (strM = gVar.m("remaining")) != null && strM != "") {
                return SUtils.parseIntNumber(strM);
            }
        } catch (Exception unused) {
        }
        return -1;
    }

    public static int getItemSku(int i2, String str) {
        try {
            return SUtils.parseIntNumber(j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2)).H());
        } catch (Exception unused) {
            return -1;
        }
    }

    public static String getLanguage() {
        return j.N0;
    }

    public static String getLastCurrencyISOCode() {
        return RMS.getLastCurrency();
    }

    public static String getLastPackOrderPurchased() {
        String lastPackOrderPurchased = RMS.getLastPackOrderPurchased();
        return (lastPackOrderPurchased == null && lastPackOrderPurchased.equals("")) ? "0" : lastPackOrderPurchased;
    }

    public static String getLocale() {
        return j.O0;
    }

    public static Activity getMainActivity() {
        return j.P0;
    }

    public static String getMoneySpentInfo() {
        return RMS.getMoneySpent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getOSConfirmationLayout(com.gameloft.android2d.iap.utils.g gVar) {
        int i2 = R.layout.iap_layout_osconfirmation;
        if (gVar == null) {
            return R.layout.iap_layout_osconfirmation;
        }
        com.gameloft.android2d.iap.billings.a aVarU = gVar.u();
        int iW = aVarU.w();
        String strC = gVar.C();
        if (!(strC == null || strC.equals("0")) || gVar.L().equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemBundle))) {
            i2 = R.layout.iap_layout_osconfirmation_directiap;
        }
        return (iW == 2 || iW == 5) ? R.layout.iap_osconfirmation_germany : (iW == 17 && SUtils.isValidString(aVarU.L())) ? R.layout.iap_layout_osconfirmation_sp : i2;
    }

    public static long getOldVirtualCurrency(int i2) {
        return getOldVirtualCurrency(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static long getOldVirtualCurrency(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar != null) {
                return gVar.t();
            }
            return 0L;
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static String getPackOrderPurchased(int i2, String str) {
        if (!str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCash)) && !str.equalsIgnoreCase(SUtils.getStringRS(R.string.k_ItemCoin))) {
            return "0";
        }
        return "" + (getIndexOfPricepoint(i2, str) + 1);
    }

    public static int getResult() {
        return j.B0;
    }

    public static int getSamsungDevFlag() {
        return j.M0;
    }

    public static ServerInfo getServerInfo() {
        return j.x0;
    }

    public static com.gameloft.android2d.iap.utils.h getShopProfile() {
        return j.x0.b();
    }

    public static String getSupportNumber(int i2) {
        return getSupportNumber(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static String getSupportNumber(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null) {
                return null;
            }
            return gVar.u().G();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getUnlockCode() {
        IAPLib iAPLib = j;
        String unlockCodeStored = RMS.getUnlockCodeStored();
        iAPLib.F0 = unlockCodeStored;
        return unlockCodeStored;
    }

    public static String getUserCredential() {
        return h;
    }

    public static String getUserName() {
        return f2858f;
    }

    public static String getVersionNumber() {
        return j.A0;
    }

    public static long getVirtualCurrency(int i2) {
        return getVirtualCurrency(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static long getVirtualCurrency(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar != null) {
                return gVar.s();
            }
            return 0L;
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static boolean handleActivityResult(int i2, int i3, Intent intent) {
        return false;
    }

    public static void handleDestroyEvent() {
    }

    public static void handlePauseEvent() {
    }

    public static void handleRestartEvent() {
    }

    public static void handleResumeEvent() {
        new Thread(new i()).start();
    }

    public static void handleStopEvent() {
    }

    public static boolean isBillTypeMOEnabled() {
        return SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableBillTypeMO)) != null && SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableBillTypeMO)).equals("1");
    }

    public static boolean isCCBilling(String str) {
        return str.equals(SUtils.getStringRS(R.string.k_WAPCCBilling)) || str.equals(SUtils.getStringRS(R.string.k_WAPPayPalBilling)) || str.equals(SUtils.getStringRS(R.string.k_WAPAmazonBilling));
    }

    public static boolean isConsumeItemsEnabled() {
        return SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableConsumeItems)) != null && SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableConsumeItems)).equals("1");
    }

    public static boolean isCreditCardEnabled() {
        return SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableCreditCard)) != null && SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableCreditCard)).equals("1");
    }

    public static boolean isDisableHTTPProfiles() {
        return j.L0;
    }

    public static boolean isDisableSMSProfiles() {
        return j.K0;
    }

    public static boolean isInitializeDone() {
        return j.H0;
    }

    public static boolean isLegacyBetaStatus() {
        return h0;
    }

    public static boolean isManagedItem(int i2, String str) {
        String strC;
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar == null || (strC = gVar.C()) == null) {
                return false;
            }
            return strC.equals("1");
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isNeedPreFormation(int i2) {
        return isNeedPreFormation(i2, SUtils.getStringRS(R.string.k_ItemCash));
    }

    public static boolean isNeedPreFormation(int i2, String str) {
        try {
            com.gameloft.android2d.iap.utils.g gVar = j.x0.b().k(str.toLowerCase()).get(Integer.valueOf(i2));
            if (gVar != null) {
                String strC = gVar.u().C();
                int i3 = 0;
                while (true) {
                    String[] strArr = com.gameloft.android2d.iap.a.c;
                    if (i3 >= strArr.length) {
                        break;
                    }
                    if (strC != null && strC.equals(strArr[i3])) {
                        return true;
                    }
                    i3++;
                }
            } else {
                return false;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean isRedeemUnlocked() {
        return j.U0;
    }

    public static boolean isSMSBeingSent() {
        return j.S0;
    }

    public static boolean isSMSSent() {
        return j.T0;
    }

    public static boolean isSendSMSStarted() {
        return j.R0;
    }

    public static boolean isShenzhoufuBillingEnabled() {
        return SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableShenzhoufu)) != null && SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableShenzhoufu)).equals("1");
    }

    public static boolean isSpecialCarriers(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = w0;
            if (i2 >= strArr.length) {
                return false;
            }
            if (strArr[i2].indexOf(str) != -1) {
                return true;
            }
            i2++;
        }
    }

    public static boolean isSupportOEMProfiles() {
        return j.J0;
    }

    public static boolean isTransactionInProgress() {
        return t;
    }

    public static boolean isUmpBillingEnabled() {
        return SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableUmpBilling)) != null && SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADEnableUmpBilling)).equals("1");
    }

    public static boolean itemUnlockedSilent() {
        return false;
    }

    public static void markTransactionInProgressStatus() {
        t = true;
    }

    public static void onDestroy() {
        try {
            if (Q || !(j.x0.a().c instanceof GoogleBilling)) {
                return;
            }
            GoogleBilling.onDestroy();
        } catch (Exception unused) {
        }
    }

    public static boolean promoIsEnabled() {
        return j.x0.b().x();
    }

    public static void redeemCode() {
        IAPLib iAPLib = j;
        iAPLib.U0 = true;
        RMS.rmsSave(com.gameloft.android2d.iap.a.b[4], "1");
        com.gameloft.android2d.iap.billings.a aVarCreateBilling = BillingFactory.CreateBilling(RMS.getLastBillingType());
        aVarCreateBilling.d0(RMS.getLastBillType());
        int lastFlowType = RMS.getLastFlowType();
        boolean zEqualsIgnoreCase = aVarCreateBilling.r().equalsIgnoreCase(SUtils.getStringRS(R.string.k_BillTypeMO));
        if (lastFlowType != 7 && !zEqualsIgnoreCase) {
            aVarCreateBilling.p(aVarCreateBilling.Z());
            return;
        }
        setResult(1);
        iAPLib.P0.runOnUiThread(new v(zEqualsIgnoreCase, lastFlowType, aVarCreateBilling));
        iAPLib.P0.runOnUiThread(new w());
    }

    public static void reset() {
        String[] strArr = com.gameloft.android2d.iap.a.b;
        RMS.rmsSave(strArr[2], "");
        RMS.rmsSave(strArr[6], "");
        RMS.rmsSave(strArr[3], "");
        if (s) {
            setResult(10);
        } else {
            setResult(0);
        }
        cleanStatus();
        setError(-19);
    }

    public static void resumeLastModuleStateAfterRefreshFeed() {
        s = true;
        setResult(10);
        setError(0);
        if (S) {
            IAP_CallBack.IAP_OnReLoadFeedCallback();
            S = false;
        }
        if (checkMessageSent()) {
            setResult(2);
        }
        CheckPendingVerification();
    }

    public static void saveMoneySpentInfo() {
        try {
            String lastPrice = RMS.getLastPrice();
            if (lastPrice != null && !lastPrice.equals("") && !RMS.getLastBillingType().equals(SUtils.getStringRS(R.string.k_CCBilling))) {
                float floatNumber = SUtils.parseFloatNumber(lastPrice);
                String moneySpent = RMS.getMoneySpent();
                RMS.saveMoneySpentAndProfileID(String.valueOf((moneySpent != null ? SUtils.parseFloatNumber(moneySpent) : 0.0f) + floatNumber), RMS.getLastProfileID());
            }
        } catch (Exception unused) {
        }
    }

    public static void sendItemDeliveryConfirmation() {
        try {
            String lastBillingType = RMS.getLastBillingType();
            if (TextUtils.isEmpty(lastBillingType)) {
                return;
            }
            BillingFactory.CreateBilling(lastBillingType).b0();
        } catch (Exception unused) {
        }
    }

    public static void setAccessToken(String str) {
        z = str;
    }

    public static void setAgeUser(int i2) {
        l0 = i2;
    }

    public static void setAirPlainMode(boolean z2) {
        j.z0 = z2;
    }

    public static void setAnonymousCredential(String str) {
        y = str;
        if (str != null) {
            str.indexOf("anonymous");
        }
    }

    public static void setClientID(String str) {
        f2859g = str;
    }

    public static void setDIAPConfirmationDisabledOnShop(boolean z2) {
        G = z2;
    }

    public static void setDIAPItemInShop(boolean z2) {
        H = z2;
    }

    public static void setDatacenter(String str) {
        i = str;
    }

    public static void setError(int i2) {
        j.G0 = i2;
    }

    public static void setGameType(String str) {
        m0 = str;
    }

    public static void setItemTypeToBuy(String str) {
        j.E0 = str;
    }

    public static void setLanguage(String str) {
        IAPLib iAPLib = j;
        String str2 = iAPLib.N0;
        if (str2 != null && !str2.equalsIgnoreCase(str)) {
            s = false;
            setResult(0);
        }
        iAPLib.N0 = str;
    }

    public static void setRedeemUnlocked(boolean z2) {
        j.U0 = z2;
    }

    public static void setResult(int i2) {
        IAPLib iAPLib = j;
        int i3 = iAPLib.B0;
        iAPLib.B0 = i2;
        if (i2 == 2 || i2 == 10) {
            clearTransactionInProgressStatus();
        }
        if (iAPLib.B0 == 11) {
            T = "";
            S = false;
        }
        if (i3 == 7) {
            RMS.rms_SaveInfo("", 39);
        }
    }

    public static void setSMSBeingSent(boolean z2) {
        j.S0 = z2;
    }

    public static void setSMSSent(boolean z2) {
        j.T0 = z2;
    }

    public static void setSendSMSStarted(boolean z2) {
        j.R0 = z2;
    }

    public static void setTextForConfirmationScreenWP8(String str, String str2) {
    }

    public static void setUserCredential(String str) {
        h = str;
    }

    public static void setUserName(String str) {
        f2858f = str;
    }

    public static void showIAPLimitationInforming(String str, String str2, String str3) {
        if (o && !Boolean.valueOf(RMS.getIAPLimtation()).booleanValue()) {
            String string = (str2 == null || str2.equals("")) ? ((Activity) SUtils.getContext()).getString(R.string.GAME_STARTUP_WITHOUT_SOFTCURRENCY) : ((Activity) SUtils.getContext()).getString(R.string.GAME_STARTUP);
            String iAPLimitationTextFormated = (string == null || string.equals("")) ? "Load text is error!" : getIAPLimitationTextFormated(string, str, str2, str3);
            RMS.saveIAPLimtation(String.valueOf(true));
            j.P0.runOnUiThread(new x(iAPLimitationTextFormated));
        }
    }

    public static void showIAPLimitationWarning(String str) {
        j.P0.runOnUiThread(new a(str));
    }

    public static void showInputSimOperatorDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(SUtils.getContext());
        builder.setTitle("Input Fake Sim Operator");
        EditText editText = new EditText(SUtils.getContext());
        editText.setInputType(2);
        builder.setView(editText);
        builder.setPositiveButton("OK", new b(editText));
        builder.setNegativeButton("Cancel", new c());
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.show();
    }

    public static void showTermAndConditionDialog(String str, String str2, String str3) {
        if (str2 == null) {
            u0 = false;
            return;
        }
        String strReplace = str.replace("|", "");
        String strReplace2 = str3.replace("|", "");
        String strReplace3 = str2.replace("|", "").replace("\\n", System.getProperty("line.separator"));
        AlertDialog.Builder builder = new AlertDialog.Builder(SUtils.getContext());
        builder.setTitle(strReplace);
        builder.setMessage(strReplace3);
        builder.setPositiveButton(strReplace2, new d());
        builder.setOnKeyListener(new e());
        AlertDialog alertDialogCreate = builder.create();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(alertDialogCreate.getWindow().getAttributes());
        layoutParams.width = -1;
        layoutParams.height = -1;
        alertDialogCreate.getWindow().setAttributes(layoutParams);
        alertDialogCreate.show();
        Display defaultDisplay = ((WindowManager) SUtils.getContext().getSystemService("window")).getDefaultDisplay();
        int height = defaultDisplay.getHeight();
        alertDialogCreate.getWindow().setLayout(defaultDisplay.getWidth(), height);
    }

    public static void showWarningPermissionDialog(String str) {
        String str2 = "";
        if (str.equals("android.permission.SEND_SMS")) {
            str2 = ("" + SUtils.getLocalizedString(R.string.GP_DENY_SMS)) + "\n" + SUtils.getLocalizedString(R.string.GP_DESCRIPTION_CONTINUE);
        } else if (str.equals("android.permission.READ_PHONE_STATE")) {
            str2 = ("" + SUtils.getLocalizedString(R.string.GP_DENY_PHONE)) + "\n" + SUtils.getLocalizedString(R.string.GP_DESCRIPTION_CONTINUE);
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(SUtils.getContext()).setNegativeButton(SUtils.getLocalizedString(R.string.GP_SETTING), new m()).setPositiveButton(SUtils.getLocalizedString(R.string.GP_CONTINUE), new l()).setTitle(SUtils.getLocalizedString(R.string.GP_DENIED)).setMessage(str2).create();
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.setOnKeyListener(new n());
        alertDialogCreate.show();
    }

    public static boolean verifyRequest(int i2) {
        return verifyRequest(i2, false);
    }

    public static boolean verifyRequest(int i2, boolean z2) {
        IAPLib iAPLib = j;
        String unlockCode = getUnlockCode();
        iAPLib.F0 = unlockCode;
        boolean zIsValidUnlockCode = (unlockCode == null || unlockCode.length() <= 0) ? false : SUtils.isValidUnlockCode(String.valueOf(i2), iAPLib.F0);
        if (zIsValidUnlockCode && iAPLib.B0 == 2 && SUtils.getStringRS(R.string.k_SMSBilling).equals(RMS.getLastBillingType())) {
            RMS.rms_SaveInfo(SUtils.searchForTrxIDFromInbox(i2 + ""), 39);
        }
        return zIsValidUnlockCode;
    }

    public static boolean verifyRequest(String str) {
        return verifyRequest(str, false);
    }

    public static boolean verifyRequest(String str, boolean z2) {
        IAPLib iAPLib = j;
        String unlockCode = getUnlockCode();
        iAPLib.F0 = unlockCode;
        boolean zIsValidUnlockCode = (unlockCode == null || unlockCode.length() <= 0) ? false : SUtils.isValidUnlockCode(str, iAPLib.F0);
        if (zIsValidUnlockCode && iAPLib.B0 == 2 && SUtils.getStringRS(R.string.k_SMSBilling).equals(RMS.getLastBillingType())) {
            RMS.rms_SaveInfo(SUtils.searchForTrxIDFromInbox(str + ""), 39);
        }
        return zIsValidUnlockCode;
    }
}
