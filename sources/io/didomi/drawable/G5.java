package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.W3;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B%\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\f2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0003H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001e\u0010 J'\u0010'\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#2\b\b\u0002\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J'\u0010)\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#2\b\b\u0002\u0010&\u001a\u00020%¢\u0006\u0004\b)\u0010(R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010+R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u001b\u00100\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b)\u0010\u000e¨\u00061"}, d2 = {"Lio/didomi/sdk/G5;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/P5;", "", "Lio/didomi/sdk/W3;", "list", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/G5$a;", "callback", "<init>", "(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/G5$a;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/P5;", "holder", "", "payloads", "", "onBindViewHolder", "(Lio/didomi/sdk/P5;ILjava/util/List;)V", "(Lio/didomi/sdk/P5;I)V", "", "id", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "accessibilityAnnounceState", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V", "a", "Ljava/util/List;", "Lio/didomi/sdk/z8;", "c", "Lio/didomi/sdk/G5$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "indentPersonalDataPosition", "android_release"}, mv = {1, 8, 0})
public final class G5 extends RecyclerView.Adapter<P5> {
    private final List<W3> a;
    private final C1965z8 b;
    private final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8226d;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/G5$a;", "", "Lio/didomi/sdk/W3$a;", "type", "", "id", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/W3$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "(Lio/didomi/sdk/W3$a;Ljava/lang/String;)V", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a(W3.a type, String id);

        void a(W3.a type, String id, DidomiToggle.b state);
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[W3.a.values().length];
            try {
                iArr[W3.a.Category.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[W3.a.CategoryHeader.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[W3.a.Empty.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[W3.a.Header.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[W3.a.PersonalData.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Integer> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            Iterator it = G5.this.a.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (((W3) it.next()) instanceof PersonalDataDisplayItem) {
                    break;
                }
                i++;
            }
            return Integer.valueOf(i);
        }
    }

    public G5(List<W3> list, C1965z8 themeProvider, a callback) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.a = list;
        this.b = themeProvider;
        this.c = callback;
        this.f8226d = LazyKt__LazyJVMKt.lazy(new c());
        setHasStableIds(true);
    }

    private final int a() {
        return ((Number) this.f8226d.getValue()).intValue();
    }

    public static /* synthetic */ void a(G5 g5, String str, DidomiToggle.b bVar, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        g5.a(str, bVar, z);
    }

    public final void a(String id, DidomiToggle.b state, boolean z) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Iterator it = CollectionsKt___CollectionsJvmKt.filterIsInstance(this.a, PersonalDataDisplayItem.class).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PersonalDataDisplayItem personalDataDisplayItem = (PersonalDataDisplayItem) next;
            if (personalDataDisplayItem.getType() == W3.a.Category && Intrinsics.areEqual(personalDataDisplayItem.getDataId(), id)) {
                break;
            }
        }
        PersonalDataDisplayItem personalDataDisplayItem2 = (PersonalDataDisplayItem) next;
        if (personalDataDisplayItem2 != null) {
            int iIndexOf = this.a.indexOf(personalDataDisplayItem2);
            personalDataDisplayItem2.a(state);
            personalDataDisplayItem2.a(z);
            notifyItemChanged(iIndexOf, personalDataDisplayItem2);
        }
    }

    public final void b(String id, DidomiToggle.b state, boolean z) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Iterator it = CollectionsKt___CollectionsJvmKt.filterIsInstance(this.a, PersonalDataDisplayItem.class).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PersonalDataDisplayItem personalDataDisplayItem = (PersonalDataDisplayItem) next;
            if (personalDataDisplayItem.getType() == W3.a.PersonalData && Intrinsics.areEqual(personalDataDisplayItem.getDataId(), id)) {
                break;
            }
        }
        PersonalDataDisplayItem personalDataDisplayItem2 = (PersonalDataDisplayItem) next;
        if (personalDataDisplayItem2 != null) {
            int iIndexOf = this.a.indexOf(personalDataDisplayItem2);
            personalDataDisplayItem2.a(state);
            personalDataDisplayItem2.a(z);
            notifyItemChanged(iIndexOf, personalDataDisplayItem2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.a.get(i).getId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        int i2 = b.a[this.a.get(i).getType().ordinal()];
        if (i2 == 1) {
            return 3;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 0;
        }
        if (i2 == 4) {
            return 1;
        }
        if (i2 == 5) {
            return 3;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        onBindViewHolder((P5) viewHolder, i, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(P5 holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof K5) {
            W3 w3 = this.a.get(i);
            Intrinsics.checkNotNull(w3, "null cannot be cast to non-null type io.didomi.sdk.spi.mobile.model.PersonalDataDisplayEmpty");
            ((K5) holder).a((PersonalDataDisplayEmpty) w3);
            return;
        }
        if (holder instanceof N5) {
            W3 w32 = this.a.get(i);
            Intrinsics.checkNotNull(w32, "null cannot be cast to non-null type io.didomi.sdk.spi.mobile.model.PersonalDataDisplayHeader");
            ((N5) holder).a((PersonalDataDisplayHeader) w32);
        } else if (holder instanceof J5) {
            W3 w33 = this.a.get(i);
            Intrinsics.checkNotNull(w33, "null cannot be cast to non-null type io.didomi.sdk.spi.mobile.model.PersonalDataDisplayCategoryHeader");
            ((J5) holder).a((PersonalDataDisplayCategoryHeader) w33);
        } else if (holder instanceof O5) {
            W3 w34 = this.a.get(i);
            Intrinsics.checkNotNull(w34, "null cannot be cast to non-null type io.didomi.sdk.spi.mobile.model.PersonalDataDisplayItem");
            ((O5) holder).a((PersonalDataDisplayItem) w34, i - a());
        }
    }

    public void onBindViewHolder(P5 holder, int i, List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            super.onBindViewHolder(holder, i, payloads);
        } else {
            if (!(holder instanceof O5)) {
                super.onBindViewHolder(holder, i, payloads);
                return;
            }
            Object objFirst = p.first((List<? extends Object>) payloads);
            Intrinsics.checkNotNull(objFirst, "null cannot be cast to non-null type io.didomi.sdk.spi.mobile.model.PersonalDataDisplayItem");
            ((O5) holder).b((PersonalDataDisplayItem) objFirst, i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public P5 onCreateViewHolder(ViewGroup parent, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        if (i == 0) {
            C1958z1 c1958z1A = C1958z1.a(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(c1958z1A, "inflate(inflater, parent, false)");
            return new K5(c1958z1A, this.b);
        }
        if (i == 1) {
            A1 a1A = A1.a(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(a1A, "inflate(inflater, parent, false)");
            return new N5(a1A, this.b);
        }
        if (i == 2) {
            C1948y1 c1948y1A = C1948y1.a(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(c1948y1A, "inflate(inflater, parent, false)");
            return new J5(c1948y1A, this.b);
        }
        if (i == 3) {
            B1 b1A = B1.a(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(b1A, "inflate(inflater, parent, false)");
            return new O5(b1A, this.c, this.b);
        }
        throw new Throwable("Unknown viewType (" + i + ')');
    }
}
