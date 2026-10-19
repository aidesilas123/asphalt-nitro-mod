package com.gameloft.didomiwrapper;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceManager;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.DidomiInitializeParameters;
import io.didomi.drawable.events.EventListener;
import io.didomi.drawable.functionalinterfaces.DidomiCallable;
import io.didomi.drawable.models.CurrentUserStatus;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DidomiWrapper {
    private static final AtomicBoolean a = new AtomicBoolean(false);
    private static final AtomicBoolean b = new AtomicBoolean(false);
    private static final AtomicBoolean c = new AtomicBoolean(false);

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2926d;

        a(String str, String str2, String str3, String str4) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.f2926d = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (DidomiWrapper.a.compareAndSet(false, true)) {
                    DidomiWrapper.InitializeNotifications();
                    Didomi.getInstance().initialize(Utils.GetActivity().getApplication(), new DidomiInitializeParameters(this.a, null, null, null, false, null, this.b, null, false, this.c, this.f2926d));
                }
            } catch (Exception unused) {
                DidomiWrapper.a.set(false);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (DidomiWrapper.a.get() && DidomiWrapper.b.compareAndSet(false, true)) {
                    Didomi.getInstance().setupUI(Utils.GetActivity());
                }
            } catch (Exception unused) {
                DidomiWrapper.b.set(false);
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Didomi.getInstance().showNotice(Utils.GetActivity());
            } catch (Exception unused) {
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Didomi.getInstance().hideNotice();
            } catch (Exception unused) {
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Didomi.getInstance().showPreferences(Utils.GetActivity());
            } catch (Exception unused) {
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Didomi.getInstance().hidePreferences();
            } catch (Exception unused) {
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Didomi.getInstance().showPreferences(Utils.GetActivity(), Didomi.VIEW_VENDORS);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean GetConsentStatus(String str) {
        try {
            Map<String, CurrentUserStatus.VendorStatus> vendors = Didomi.getInstance().getCurrentUserStatus().getVendors();
            CurrentUserStatus.VendorStatus vendorStatus = vendors.get(str);
            if (vendorStatus == null) {
                vendorStatus = vendors.get(str.replaceFirst("c:", ""));
            }
            if (vendorStatus != null) {
                return vendorStatus.getEnabled();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean GetConsentStatusForPurpose(String str) {
        try {
            CurrentUserStatus.PurposeStatus purposeStatus = Didomi.getInstance().getCurrentUserStatus().getPurposes().get(str);
            if (purposeStatus != null) {
                return purposeStatus.getEnabled();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String GetIABConsentString() {
        String consentString;
        String str = "";
        try {
            consentString = Didomi.getInstance().getCurrentUserStatus().getConsentString();
        } catch (Exception unused) {
        }
        try {
            if (!TextUtils.isEmpty(consentString)) {
                return consentString;
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(Utils.GetActivity());
            String string = defaultSharedPreferences.getString("IABTCF_TCString", "");
            return TextUtils.isEmpty(string) ? defaultSharedPreferences.getString("IABConsent_ConsentString", "") : string;
        } catch (Exception unused2) {
            str = consentString;
            return str;
        }
    }

    public static int GetIABVendorCount() {
        try {
            return Didomi.getInstance().getIabVendorCount();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int GetNonIABVendorCount() {
        try {
            return Didomi.getInstance().getNonIabVendorCount();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String GetText(String str) {
        try {
            String string = new JSONObject(Didomi.getInstance().getText(str)).toString();
            try {
                if (TextUtils.isEmpty(string)) {
                    return "";
                }
            } catch (Exception unused) {
            }
            return string;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static int GetTotalVendorCount() {
        try {
            return Didomi.getInstance().getTotalVendorCount();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String GetTranslatedText(String str) {
        try {
            String translatedText = Didomi.getInstance().getTranslatedText(str);
            try {
                if (TextUtils.isEmpty(translatedText)) {
                    return "";
                }
            } catch (Exception unused) {
            }
            return translatedText;
        } catch (Exception unused2) {
            return "";
        }
    }

    public static boolean HasAdvertisingIdClient() {
        return Utils.ClassExists("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }

    public static void HideNotice() {
        Utils.RunOnMainThreadAsync(new d());
    }

    public static void HidePreferences() {
        Utils.RunOnMainThreadAsync(new f());
    }

    public static void Initialize(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str2)) {
            str2 = null;
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = null;
        }
        if (TextUtils.isEmpty(str4)) {
            str4 = null;
        }
        Utils.RunOnMainThreadAsync(new a(str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void InitializeNotifications() throws Exception {
        if (c.compareAndSet(false, true)) {
            Didomi.getInstance().onReady(new DidomiCallable() { // from class: com.gameloft.didomiwrapper.b
                @Override // io.didomi.drawable.functionalinterfaces.DidomiCallable
                public final void call() {
                    DidomiWrapperEventListener.NativeOnReady();
                }
            });
            Didomi.getInstance().onError(new DidomiCallable() { // from class: com.gameloft.didomiwrapper.a
                @Override // io.didomi.drawable.functionalinterfaces.DidomiCallable
                public final void call() {
                    DidomiWrapperEventListener.NativeOnError();
                }
            });
            Didomi.getInstance().addEventListener((EventListener) new DidomiWrapperEventListener());
        }
    }

    public static boolean IsConsentRequired() {
        try {
            return Didomi.getInstance().shouldUserStatusBeCollected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean IsNoticeVisible() {
        try {
            return Didomi.getInstance().isNoticeVisible();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean IsPreferencesVisible() {
        try {
            return Didomi.getInstance().isPreferencesVisible();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean IsReady() {
        try {
            return Didomi.getInstance().isReady();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean IsUserConsentStatusPartial() {
        try {
            return Didomi.getInstance().isUserStatusPartial();
        } catch (Exception unused) {
            return false;
        }
    }

    public static void ResetData() {
        try {
            Didomi.getInstance().reset();
        } catch (Exception unused) {
        }
    }

    public static boolean SetActivity(Object obj) {
        AppCompatActivity appCompatActivity = (AppCompatActivity) obj;
        Utils.SetActivity(appCompatActivity);
        return appCompatActivity != null;
    }

    public static void SetLogLevel(int i) {
        int i2 = 6;
        if (i == 1) {
            i2 = 4;
        } else if (i == 2) {
            i2 = 3;
        } else if (i != 16) {
        }
        Didomi.getInstance().setLogLevel(i2);
    }

    public static boolean SetUserAgreeToAll() {
        try {
            return Didomi.getInstance().setUserAgreeToAll();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean SetUserDisagreeToAll() {
        try {
            return Didomi.getInstance().setUserDisagreeToAll();
        } catch (Exception unused) {
            return false;
        }
    }

    public static void SetupUI() {
        Utils.RunOnMainThreadAsync(new b());
    }

    public static boolean ShouldConsentBeCollected() {
        try {
            return Didomi.getInstance().shouldUserStatusBeCollected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static void ShowNotice() {
        Utils.RunOnMainThreadAsync(new c());
    }

    public static void ShowPreferences() {
        Utils.RunOnMainThreadAsync(new e());
    }

    public static void ShowVendors() {
        Utils.RunOnMainThreadAsync(new g());
    }

    public static void UpdateSelectedLanguage(String str) {
        try {
            Didomi.getInstance().updateSelectedLanguage(str);
        } catch (Exception unused) {
        }
    }
}
