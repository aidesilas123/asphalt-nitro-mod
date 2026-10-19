package com.moat.analytics.mobile.glft;

import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
class x {

    private static class a implements Iterable<View> {
        private final ViewGroup a;

        /* JADX INFO: renamed from: com.moat.analytics.mobile.glft.x$a$a, reason: collision with other inner class name */
        private class C0440a implements Iterator<View> {
            private int b;

            private C0440a() {
                this.b = -1;
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public View next() {
                this.b++;
                return a.this.a.getChildAt(this.b);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.b + 1 < a.this.a.getChildCount();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Not implemented. Under development.");
            }
        }

        private a(ViewGroup viewGroup) {
            this.a = viewGroup;
        }

        @Override // java.lang.Iterable
        public Iterator<View> iterator() {
            return new C0440a();
        }
    }

    x() {
    }

    @NonNull
    public static com.moat.analytics.mobile.glft.a.b.a<WebView> a(ViewGroup viewGroup) {
        WebView webView;
        View next;
        if (viewGroup instanceof WebView) {
            return com.moat.analytics.mobile.glft.a.b.a.a((WebView) viewGroup);
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(viewGroup);
        HashSet hashSet = new HashSet();
        int i = 0;
        loop0: while (true) {
            webView = null;
            while (!linkedList.isEmpty() && i < 100) {
                i++;
                Iterator<View> it = new a((ViewGroup) linkedList.poll()).iterator();
                while (it.hasNext()) {
                    next = it.next();
                    if (next instanceof WebView) {
                        if (webView == null) {
                            webView = (WebView) next;
                        }
                    }
                    if (next instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) next;
                        if (!hashSet.contains(viewGroup2)) {
                            hashSet.add(viewGroup2);
                            linkedList.add(viewGroup2);
                        }
                    }
                }
            }
            n.a(3, "MoatWebViewHound", next, "Ambiguous ad container: multiple WebViews reside within it.");
        }
        return com.moat.analytics.mobile.glft.a.b.a.b(webView);
    }
}
