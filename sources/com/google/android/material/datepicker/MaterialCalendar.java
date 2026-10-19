package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$integer;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class MaterialCalendar<S> extends com.google.android.material.datepicker.k<S> {

    @VisibleForTesting
    static final Object b = "MONTHS_VIEW_GROUP_TAG";

    @VisibleForTesting
    static final Object c = "NAVIGATION_PREV_TAG";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static final Object f3246d = "NAVIGATION_NEXT_TAG";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    static final Object f3247e = "SELECTOR_TOGGLE_TAG";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @StyleRes
    private int f3248f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private DateSelector<S> f3249g;

    @Nullable
    private CalendarConstraints h;

    @Nullable
    private Month i;
    private CalendarSelector j;
    private com.google.android.material.datepicker.b k;
    private RecyclerView l;
    private RecyclerView m;
    private View n;
    private View o;

    enum CalendarSelector {
        DAY,
        YEAR
    }

    class a implements Runnable {
        final /* synthetic */ int a;

        a(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialCalendar.this.m.smoothScrollToPosition(this.a);
        }
    }

    class b extends AccessibilityDelegateCompat {
        b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    class c extends l {
        final /* synthetic */ int a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.a = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            if (this.a == 0) {
                iArr[0] = MaterialCalendar.this.m.getWidth();
                iArr[1] = MaterialCalendar.this.m.getWidth();
            } else {
                iArr[0] = MaterialCalendar.this.m.getHeight();
                iArr[1] = MaterialCalendar.this.m.getHeight();
            }
        }
    }

    class d implements k {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.MaterialCalendar.k
        public void a(long j) {
            if (MaterialCalendar.this.h.i().f(j)) {
                MaterialCalendar.this.f3249g.S(j);
                Iterator<com.google.android.material.datepicker.j<S>> it = MaterialCalendar.this.a.iterator();
                while (it.hasNext()) {
                    it.next().b(MaterialCalendar.this.f3249g.Q());
                }
                MaterialCalendar.this.m.getAdapter().notifyDataSetChanged();
                if (MaterialCalendar.this.l != null) {
                    MaterialCalendar.this.l.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    class e extends RecyclerView.ItemDecoration {
        private final Calendar a = n.q();
        private final Calendar b = n.q();

        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if ((recyclerView.getAdapter() instanceof o) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                o oVar = (o) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : MaterialCalendar.this.f3249g.t()) {
                    Long l = pair.first;
                    if (l != null && pair.second != null) {
                        this.a.setTimeInMillis(l.longValue());
                        this.b.setTimeInMillis(pair.second.longValue());
                        int iC = oVar.c(this.a.get(1));
                        int iC2 = oVar.c(this.b.get(1));
                        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(iC);
                        View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(iC2);
                        int spanCount = iC / gridLayoutManager.getSpanCount();
                        int spanCount2 = iC2 / gridLayoutManager.getSpanCount();
                        int i = spanCount;
                        while (i <= spanCount2) {
                            if (gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i) != null) {
                                canvas.drawRect(i == spanCount ? viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2) : 0, r9.getTop() + MaterialCalendar.this.k.f3272d.c(), i == spanCount2 ? viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2) : recyclerView.getWidth(), r9.getBottom() - MaterialCalendar.this.k.f3272d.b(), MaterialCalendar.this.k.h);
                            }
                            i++;
                        }
                    }
                }
            }
        }
    }

    class f extends AccessibilityDelegateCompat {
        f() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setHintText(MaterialCalendar.this.o.getVisibility() == 0 ? MaterialCalendar.this.getString(R$string.F) : MaterialCalendar.this.getString(R$string.D));
        }
    }

    class g extends RecyclerView.OnScrollListener {
        final /* synthetic */ com.google.android.material.datepicker.i a;
        final /* synthetic */ MaterialButton b;

        g(com.google.android.material.datepicker.i iVar, MaterialButton materialButton) {
            this.a = iVar;
            this.b = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            if (i == 0) {
                CharSequence text = this.b.getText();
                if (Build.VERSION.SDK_INT >= 16) {
                    recyclerView.announceForAccessibility(text);
                } else {
                    recyclerView.sendAccessibilityEvent(2048);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            int iFindFirstVisibleItemPosition = i < 0 ? MaterialCalendar.this.C().findFirstVisibleItemPosition() : MaterialCalendar.this.C().findLastVisibleItemPosition();
            MaterialCalendar.this.i = this.a.b(iFindFirstVisibleItemPosition);
            this.b.setText(this.a.c(iFindFirstVisibleItemPosition));
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialCalendar.this.G();
        }
    }

    class i implements View.OnClickListener {
        final /* synthetic */ com.google.android.material.datepicker.i a;

        i(com.google.android.material.datepicker.i iVar) {
            this.a = iVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindFirstVisibleItemPosition = MaterialCalendar.this.C().findFirstVisibleItemPosition() + 1;
            if (iFindFirstVisibleItemPosition < MaterialCalendar.this.m.getAdapter().getItemCount()) {
                MaterialCalendar.this.E(this.a.b(iFindFirstVisibleItemPosition));
            }
        }
    }

    class j implements View.OnClickListener {
        final /* synthetic */ com.google.android.material.datepicker.i a;

        j(com.google.android.material.datepicker.i iVar) {
            this.a = iVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindLastVisibleItemPosition = MaterialCalendar.this.C().findLastVisibleItemPosition() - 1;
            if (iFindLastVisibleItemPosition >= 0) {
                MaterialCalendar.this.E(this.a.b(iFindLastVisibleItemPosition));
            }
        }
    }

    interface k {
        void a(long j);
    }

    @Px
    static int A(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(R$dimen.S);
    }

    private static int B(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.a0) + resources.getDimensionPixelOffset(R$dimen.b0) + resources.getDimensionPixelOffset(R$dimen.Z);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R$dimen.U);
        int i2 = com.google.android.material.datepicker.h.a;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(R$dimen.S) * i2) + ((i2 - 1) * resources.getDimensionPixelOffset(R$dimen.Y)) + resources.getDimensionPixelOffset(R$dimen.Q);
    }

    private void D(int i2) {
        this.m.post(new a(i2));
    }

    @NonNull
    public static <T> MaterialCalendar<T> newInstance(@NonNull DateSelector<T> dateSelector, @StyleRes int i2, @NonNull CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i2);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.l());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    private void u(@NonNull View view, @NonNull com.google.android.material.datepicker.i iVar) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R$id.s);
        materialButton.setTag(f3247e);
        ViewCompat.setAccessibilityDelegate(materialButton, new f());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(R$id.u);
        materialButton2.setTag(c);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(R$id.t);
        materialButton3.setTag(f3246d);
        this.n = view.findViewById(R$id.C);
        this.o = view.findViewById(R$id.x);
        F(CalendarSelector.DAY);
        materialButton.setText(this.i.m());
        this.m.addOnScrollListener(new g(iVar, materialButton));
        materialButton.setOnClickListener(new h());
        materialButton3.setOnClickListener(new i(iVar));
        materialButton2.setOnClickListener(new j(iVar));
    }

    @NonNull
    private RecyclerView.ItemDecoration v() {
        return new e();
    }

    @NonNull
    LinearLayoutManager C() {
        return (LinearLayoutManager) this.m.getLayoutManager();
    }

    void E(Month month) {
        com.google.android.material.datepicker.i iVar = (com.google.android.material.datepicker.i) this.m.getAdapter();
        int iD = iVar.d(month);
        int iD2 = iD - iVar.d(this.i);
        boolean z = Math.abs(iD2) > 3;
        boolean z2 = iD2 > 0;
        this.i = month;
        if (z && z2) {
            this.m.scrollToPosition(iD - 3);
            D(iD);
        } else if (!z) {
            D(iD);
        } else {
            this.m.scrollToPosition(iD + 3);
            D(iD);
        }
    }

    void F(CalendarSelector calendarSelector) {
        this.j = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.l.getLayoutManager().scrollToPosition(((o) this.l.getAdapter()).c(this.i.c));
            this.n.setVisibility(0);
            this.o.setVisibility(8);
        } else if (calendarSelector == CalendarSelector.DAY) {
            this.n.setVisibility(8);
            this.o.setVisibility(0);
            E(this.i);
        }
    }

    void G() {
        CalendarSelector calendarSelector = this.j;
        CalendarSelector calendarSelector2 = CalendarSelector.YEAR;
        if (calendarSelector == calendarSelector2) {
            F(CalendarSelector.DAY);
        } else if (calendarSelector == CalendarSelector.DAY) {
            F(calendarSelector2);
        }
    }

    @Override // com.google.android.material.datepicker.k
    public boolean a(@NonNull com.google.android.material.datepicker.j<S> jVar) {
        return super.a(jVar);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f3248f = bundle.getInt("THEME_RES_ID_KEY");
        this.f3249g = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.h = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.i = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i2;
        int i3;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f3248f);
        this.k = new com.google.android.material.datepicker.b(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month monthM = this.h.m();
        if (MaterialDatePicker.s(contextThemeWrapper)) {
            i2 = R$layout.r;
            i3 = 1;
        } else {
            i2 = R$layout.p;
            i3 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i2, viewGroup, false);
        viewInflate.setMinimumHeight(B(requireContext()));
        GridView gridView = (GridView) viewInflate.findViewById(R$id.y);
        ViewCompat.setAccessibilityDelegate(gridView, new b());
        gridView.setAdapter((ListAdapter) new com.google.android.material.datepicker.e());
        gridView.setNumColumns(monthM.f3259d);
        gridView.setEnabled(false);
        this.m = (RecyclerView) viewInflate.findViewById(R$id.B);
        this.m.setLayoutManager(new c(getContext(), i3, false, i3));
        this.m.setTag(b);
        com.google.android.material.datepicker.i iVar = new com.google.android.material.datepicker.i(contextThemeWrapper, this.f3249g, this.h, new d());
        this.m.setAdapter(iVar);
        int integer = contextThemeWrapper.getResources().getInteger(R$integer.c);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R$id.C);
        this.l = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.l.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.l.setAdapter(new o(this));
            this.l.addItemDecoration(v());
        }
        if (viewInflate.findViewById(R$id.s) != null) {
            u(viewInflate, iVar);
        }
        if (!MaterialDatePicker.s(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.m);
        }
        this.m.scrollToPosition(iVar.d(this.i));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f3248f);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.f3249g);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.h);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.i);
    }

    @Nullable
    CalendarConstraints w() {
        return this.h;
    }

    com.google.android.material.datepicker.b x() {
        return this.k;
    }

    @Nullable
    Month y() {
        return this.i;
    }

    @Nullable
    public DateSelector<S> z() {
        return this.f3249g;
    }
}
