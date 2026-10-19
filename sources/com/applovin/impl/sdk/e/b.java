package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.c;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.applovin.impl.sdk.e.a {
    private final com.applovin.impl.sdk.d.e aHi;
    private final String aTo;
    private final List<String> aTp;
    private final a aTq;
    private StringBuffer aTr;
    private final Object aTs;
    private final ExecutorService aTt;

    @Nullable
    private List<c> aTu;
    private final com.applovin.impl.sdk.ad.e aiL;

    public interface a {
        void d(String str, boolean z);
    }

    public b(String str, com.applovin.impl.sdk.ad.e eVar, List<String> list, com.applovin.impl.sdk.d.e eVar2, ExecutorService executorService, com.applovin.impl.sdk.n nVar, a aVar) {
        super("AsyncTaskCacheHTMLResources", nVar);
        this.aTo = str;
        this.aiL = eVar;
        this.aTp = list;
        this.aHi = eVar2;
        this.aTt = executorService;
        this.aTq = aVar;
        this.aTr = new StringBuffer(str);
        this.aTs = new Object();
    }

    private HashSet<c> Kd() {
        HashSet<c> hashSet = new HashSet<>();
        for (final String str : StringUtils.getRegexMatches(StringUtils.match(this.aTo, (String) this.sdk.a(com.applovin.impl.sdk.c.b.aPK)), 1)) {
            if (this.aTn.get()) {
                return null;
            }
            if (StringUtils.isValidString(str)) {
                hashSet.add(new c(str, this.aiL, Collections.emptyList(), false, this.aHi, this.sdk, new c.a() { // from class: com.applovin.impl.sdk.e.b.1
                    @Override // com.applovin.impl.sdk.e.c.a
                    public void q(@Nullable Uri uri) {
                        if (uri != null) {
                            synchronized (b.this.aTs) {
                                int iIndexOf = b.this.aTr.indexOf(str);
                                b.this.aTr.replace(iIndexOf, str.length() + iIndexOf, uri.toString());
                            }
                            b.this.aiL.k(uri);
                            b.this.aHi.JT();
                            return;
                        }
                        com.applovin.impl.sdk.x xVar = b.this.logger;
                        if (com.applovin.impl.sdk.x.Fn()) {
                            b bVar = b.this;
                            bVar.logger.f(bVar.tag, "Failed to cache JavaScript resource " + str);
                        }
                        if (b.this.aTq != null) {
                            b.this.aTq.d(b.this.aTo, true);
                        }
                        b.this.aHi.JU();
                    }
                }));
            } else if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Skip caching of non-resource " + str);
            }
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0011, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.HashSet<com.applovin.impl.sdk.e.c> Ke() {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.e.b.Ke():java.util.HashSet");
    }

    private Collection<Character> Kf() {
        HashSet hashSet = new HashSet();
        for (char c : ((String) this.sdk.a(com.applovin.impl.sdk.c.b.aLL)).toCharArray()) {
            hashSet.add(Character.valueOf(c));
        }
        hashSet.add('\"');
        return hashSet;
    }

    private void dp(@Nullable String str) {
        a aVar;
        if (this.aTn.get() || (aVar = this.aTq) == null) {
            return;
        }
        aVar.d(str, false);
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: Kc, reason: merged with bridge method [inline-methods] */
    public Boolean call() throws Exception {
        HashSet<c> hashSetKd;
        if (this.aTn.get()) {
            return Boolean.FALSE;
        }
        if (TextUtils.isEmpty(this.aTo)) {
            dp(this.aTo);
            return Boolean.FALSE;
        }
        if (!((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLM)).booleanValue()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Resource caching is disabled, skipping cache...");
            }
            dp(this.aTo);
            return Boolean.FALSE;
        }
        HashSet hashSet = new HashSet();
        HashSet<c> hashSetKe = Ke();
        if (hashSetKe != null) {
            hashSet.addAll(hashSetKe);
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aPJ)).booleanValue() && (hashSetKd = Kd()) != null) {
            hashSet.addAll(hashSetKd);
        }
        this.aTu = new ArrayList(hashSet);
        if (this.aTn.get()) {
            return Boolean.FALSE;
        }
        List<c> list = this.aTu;
        if (list == null || list.isEmpty()) {
            dp(this.aTo);
            return Boolean.FALSE;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Executing " + this.aTu.size() + " caching operations...");
        }
        this.aTt.invokeAll(this.aTu);
        synchronized (this.aTs) {
            dp(this.aTr.toString());
        }
        return Boolean.TRUE;
    }
}
