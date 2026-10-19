package com.fyber.inneractive.sdk.flow.vast;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2033e;
    public boolean a = false;
    public View b = null;
    public boolean c = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EnumC0161a f2034f = EnumC0161a.HIGH;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.flow.vast.a$a, reason: collision with other inner class name */
    public enum EnumC0161a {
        HIGH,
        LOW
    }

    public static class b implements Comparator<a> {
        @Override // java.util.Comparator
        public int compare(a aVar, a aVar2) {
            return aVar.f2034f.ordinal() - aVar2.f2034f.ordinal();
        }
    }

    public void a() {
        this.b = null;
        this.a = false;
    }

    public void a(View view) {
        this.b = view;
    }
}
