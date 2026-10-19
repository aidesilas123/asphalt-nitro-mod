package com.applovin.impl.mediation.debugger.c;

import android.text.TextUtils;
import com.applovin.impl.mediation.debugger.a;
import com.applovin.impl.sdk.e.d;
import com.applovin.impl.sdk.e.w;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.x;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class b extends d {
    private final a apQ;

    public interface a {
        void a(a.b bVar);

        void bG(String str);
    }

    public b(n nVar, a aVar) {
        super("TaskFetchDeveloperUri", nVar);
        this.apQ = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strValueOf = this.sdk.BV() != null ? String.valueOf(this.sdk.BU().Ej().En()) : String.valueOf(this.sdk.BS().Db().get("package_name"));
        if (x.Fn()) {
            this.logger.f(this.tag, "Looking up developer URI for package name: " + strValueOf);
        }
        this.sdk.BO().b(new w<String>(com.applovin.impl.sdk.network.c.D(this.sdk).cX("GET").cW("https://play.google.com/store/apps/details?id=" + strValueOf).ad("").aS(false).Ig(), this.sdk) { // from class: com.applovin.impl.mediation.debugger.c.b.1
            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            public void a(int i, String str, String str2) {
                if (x.Fn()) {
                    this.logger.i(this.tag, "Unable to fetch developer URI due to: " + str + ", and received error code: " + i);
                }
                b.this.apQ.a(a.b.DEVELOPER_URI_NOT_FOUND);
            }

            @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void d(String str, int i) {
                if (TextUtils.isEmpty(str)) {
                    if (x.Fn()) {
                        this.logger.i(this.tag, "No developer URI found - response is empty");
                    }
                    b.this.apQ.a(a.b.DEVELOPER_URI_NOT_FOUND);
                }
                Matcher matcher = Pattern.compile("(?<=\"appstore:developer_url\" content=\").+?(?=\">)").matcher(str);
                if (!matcher.find()) {
                    if (x.Fn()) {
                        this.logger.i(this.tag, "Unable to find developer URI from the Play Store listing metadata");
                    }
                    b.this.apQ.a(a.b.DEVELOPER_URI_NOT_FOUND);
                    return;
                }
                String strGroup = matcher.group();
                if (x.Fn()) {
                    this.logger.f(this.tag, "Found developer URI: " + strGroup);
                }
                b.this.apQ.bG(strGroup);
            }
        });
    }
}
