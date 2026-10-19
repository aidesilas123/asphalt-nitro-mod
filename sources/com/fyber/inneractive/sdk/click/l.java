package com.fyber.inneractive.sdk.click;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.fyber.inneractive.sdk.activities.InneractiveInternalBrowserActivity;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.network.p0;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.m;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.t;
import com.google.android.gms.drive.DriveFile;
import com.json.b4;
import com.json.o2;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class l {
    public Context a;
    public String b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f1929d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p0 f1932g;
    public t i;
    public boolean j;
    public com.fyber.inneractive.sdk.ignite.k k;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f1931f = 0;
    public final ArrayList<com.fyber.inneractive.sdk.click.a> h = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<i> f1930e = new ArrayList();

    public class a implements Runnable {
        public final /* synthetic */ com.fyber.inneractive.sdk.click.b a;

        public a(com.fyber.inneractive.sdk.click.b bVar) {
            this.a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = l.this.f1929d;
            if (bVar != null) {
                bVar.a(this.a);
            }
        }
    }

    public interface b {
        void a(com.fyber.inneractive.sdk.click.b bVar);
    }

    public static final class c extends Exception {
        public c(String str) {
            super(str);
        }
    }

    public enum d {
        FAILED(o2.h.t),
        OPEN_GOOGLE_STORE(o2.h.U),
        OPENED_IN_INTERNAL_BROWSER("internal browser"),
        OPENED_IN_EXTERNAL_BROWSER("external browser"),
        INTERNAL_REDIRECT("internal redirect"),
        OPEN_IN_EXTERNAL_APPLICATION("external app"),
        DEEP_LINK("deep link"),
        OPENED_USING_CHROME_NAVIGATE("chrome navigate"),
        OPEN_INTERNAL_STORE("internal store");

        public String simpleName;

        d(String str) {
            this.simpleName = str;
        }
    }

    public l(boolean z) {
        this.c = true;
        this.c = z;
    }

    public static com.fyber.inneractive.sdk.click.b a(String str, d dVar, String str2) {
        return new com.fyber.inneractive.sdk.click.b(str, dVar, str2, null);
    }

    public static com.fyber.inneractive.sdk.click.b a(String str, String str2, String str3) {
        return new com.fyber.inneractive.sdk.click.b(str, d.FAILED, str2, new c(str3));
    }

    public static void a(l lVar, com.fyber.inneractive.sdk.click.c cVar, String str, boolean z) {
        lVar.getClass();
        for (String str2 : cVar.a) {
            if (!TextUtils.equals(str2, str)) {
                lVar.f1930e.add(new i(str2, z, d.INTERNAL_REDIRECT, null));
            }
        }
    }

    public static void a(l lVar, String str, String str2, String str3) {
        if (lVar.c) {
            Intent intent = new Intent(lVar.a, (Class<?>) InneractiveInternalBrowserActivity.class);
            if (!TextUtils.isEmpty(str)) {
                InneractiveInternalBrowserActivity.setHtmlExtra(str);
            }
            intent.putExtra(InneractiveInternalBrowserActivity.URL_EXTRA, str2);
            intent.putExtra("spotId", str3);
            if (!(lVar.a instanceof Activity)) {
                intent.setFlags(DriveFile.MODE_READ_ONLY);
            }
            try {
                Context context = lVar.a;
                if (context != null) {
                    context.startActivity(intent);
                }
                List<i> list = lVar.f1930e;
                d dVar = d.OPENED_IN_INTERNAL_BROWSER;
                list.add(new i(str2, true, dVar, null));
                lVar.a(a(str2, dVar, "followRedirects"));
            } catch (ActivityNotFoundException unused) {
                lVar.f1930e.add(new i(str2, false, d.OPENED_IN_INTERNAL_BROWSER, "internal browser not registered"));
                lVar.a(a(str2, "followRedirects", "internal browser not registered"));
            }
        }
    }

    public final com.fyber.inneractive.sdk.click.b a(com.fyber.inneractive.sdk.click.b bVar) {
        bVar.f1925f = this.f1930e;
        bVar.f1924e = System.currentTimeMillis() - this.f1931f;
        IAlog.a("%s reporting result: %s", IAlog.a(this), bVar);
        m.b.post(new a(bVar));
        return bVar;
    }

    public final com.fyber.inneractive.sdk.click.b a(String str) {
        Uri uri;
        try {
            uri = Uri.parse(str);
        } catch (Exception unused) {
            IAlog.a("IAJavaUtil: getValidUri: Invalid url %s", str);
            uri = null;
        }
        if (uri == null) {
            this.f1930e.add(new i(str, false, null, "illegal uri"));
            return a(a(str, (String) null, "illegal uri"));
        }
        if (this.h.size() <= 0) {
            this.f1930e.add(new i(str, false, null, "no click handlers found"));
            return a(a(str, (String) null, "no click handlers found"));
        }
        for (com.fyber.inneractive.sdk.click.a aVar : this.h) {
            if (aVar.a(uri, this)) {
                Context context = this.a;
                com.fyber.inneractive.sdk.click.b bVarA = context != null ? aVar.a(context, uri, this.f1930e) : null;
                if (bVarA != null) {
                    return a(bVarA);
                }
            }
        }
        return null;
    }

    public void a(Context context, String str, b bVar, t tVar, boolean z, com.fyber.inneractive.sdk.ignite.k kVar, String str2) {
        Uri uri;
        this.a = context;
        this.b = str;
        this.f1929d = bVar;
        this.j = z;
        this.f1931f = System.currentTimeMillis();
        this.i = tVar;
        this.k = kVar;
        com.fyber.inneractive.sdk.click.b bVarA = a(this.b);
        int i = IAlog.a;
        IAlog.a(1, null, "%s EVENT_CLICK %s %s", "VAST_EVENT", bVarA, str);
        if (bVarA == null) {
            String str3 = this.b;
            try {
                try {
                    uri = !x.d(str3) ? Uri.parse(URLDecoder.decode(str3, b4.L)) : Uri.parse(str3);
                } catch (Exception unused) {
                    IAlog.a("%sgetDecodedUri: Failed parsing Uri!", "SuperClickHandler");
                    uri = null;
                }
                if (a(uri)) {
                    IAlog.a("%sfollowRedirects: Fetching uri: %s", IAlog.a(this), uri.toString());
                    String string = uri.toString();
                    p0 p0Var = new p0(new k(this, string, str2), string, com.fyber.inneractive.sdk.network.x.a().b());
                    this.f1932g = p0Var;
                    IAConfigManager.M.s.b(p0Var);
                }
            } catch (Exception e2) {
                if (e2 instanceof InterruptedException) {
                    return;
                }
                IAlog.b("%sfailed followRedirects %s", IAlog.a(this), e2);
                this.f1930e.add(new i(str3, false, d.INTERNAL_REDIRECT, null));
                a(new com.fyber.inneractive.sdk.click.b(str3, d.FAILED, "followRedirects", e2));
            }
        }
    }

    public final boolean a(Uri uri) {
        if (uri == null) {
            IAlog.a("%s followRedirects: Got a url which is not valid: null", IAlog.a(this));
            this.f1930e.add(new i(null, false, null, "Invalid url"));
            a(a(uri.toString(), "followRedirects", "Invalid url"));
            return false;
        }
        String scheme = uri.getScheme();
        if (scheme != null && (scheme.equalsIgnoreCase(ProxyConfig.MATCH_HTTP) || scheme.equalsIgnoreCase("https"))) {
            return true;
        }
        IAlog.a("%scould not follow redirects for scheme: %s", IAlog.a(this), uri.getScheme());
        IAlog.a("%sfull url: %s", IAlog.a(this), uri.toString());
        this.f1930e.add(new i(uri.toString(), false, null, "Invalid scheme: " + uri.getScheme()));
        a(a(uri.toString(), "followRedirects", "Invalid scheme: " + uri.getScheme()));
        return false;
    }
}
