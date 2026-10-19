package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import com.google.android.material.internal.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: CheckableGroup.java */
/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@UiThread
public class a<T extends c<T>> {
    private final Map<Integer, T> a = new HashMap();
    private final Set<Integer> b = new HashSet();
    private b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3327d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3328e;

    /* JADX INFO: renamed from: com.google.android.material.internal.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CheckableGroup.java */
    class C0231a implements c.a<T> {
        C0231a() {
        }

        @Override // com.google.android.material.internal.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(T t, boolean z) {
            if (!z) {
                a aVar = a.this;
                if (!aVar.r(t, aVar.f3328e)) {
                    return;
                }
            } else if (!a.this.g(t)) {
                return;
            }
            a.this.m();
        }
    }

    /* JADX INFO: compiled from: CheckableGroup.java */
    public interface b {
        void a(@NonNull Set<Integer> set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(@NonNull c<T> cVar) {
        int id = cVar.getId();
        if (this.b.contains(Integer.valueOf(id))) {
            return false;
        }
        T t = this.a.get(Integer.valueOf(k()));
        if (t != null) {
            r(t, false);
        }
        boolean zAdd = this.b.add(Integer.valueOf(id));
        if (!cVar.isChecked()) {
            cVar.setChecked(true);
        }
        return zAdd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(@NonNull c<T> cVar, boolean z) {
        int id = cVar.getId();
        if (!this.b.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z && this.b.size() == 1 && this.b.contains(Integer.valueOf(id))) {
            cVar.setChecked(true);
            return false;
        }
        boolean zRemove = this.b.remove(Integer.valueOf(id));
        if (cVar.isChecked()) {
            cVar.setChecked(false);
        }
        return zRemove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void e(T t) {
        this.a.put(Integer.valueOf(t.getId()), t);
        if (t.isChecked()) {
            g(t);
        }
        t.setInternalOnCheckedChangeListener(new C0231a());
    }

    public void f(@IdRes int i) {
        T t = this.a.get(Integer.valueOf(i));
        if (t != null && g(t)) {
            m();
        }
    }

    public void h() {
        boolean z = !this.b.isEmpty();
        Iterator<T> it = this.a.values().iterator();
        while (it.hasNext()) {
            r(it.next(), false);
        }
        if (z) {
            m();
        }
    }

    @NonNull
    public Set<Integer> i() {
        return new HashSet(this.b);
    }

    @NonNull
    public List<Integer> j(@NonNull ViewGroup viewGroup) {
        Set<Integer> setI = i();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof c) && setI.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    @IdRes
    public int k() {
        if (!this.f3327d || this.b.isEmpty()) {
            return -1;
        }
        return this.b.iterator().next().intValue();
    }

    public boolean l() {
        return this.f3327d;
    }

    public void n(T t) {
        t.setInternalOnCheckedChangeListener(null);
        this.a.remove(Integer.valueOf(t.getId()));
        this.b.remove(Integer.valueOf(t.getId()));
    }

    public void o(@Nullable b bVar) {
        this.c = bVar;
    }

    public void p(boolean z) {
        this.f3328e = z;
    }

    public void q(boolean z) {
        if (this.f3327d != z) {
            this.f3327d = z;
            h();
        }
    }
}
