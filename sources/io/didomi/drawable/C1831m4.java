package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.InterfaceC1931w4;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.didomi.sdk.m4, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB%\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ-\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00112\f\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u0003H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\"\u0010$J\u001b\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040%¢\u0006\u0004\b\u000f\u0010&J/\u0010,\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020'2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010)\u001a\u00020\f2\b\b\u0002\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020'2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010)\u001a\u00020\f2\b\b\u0002\u0010+\u001a\u00020*¢\u0006\u0004\b\u000f\u0010-R\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010.R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010/R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u001b\u00104\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b\u000f\u0010\u0013¨\u00065"}, d2 = {"Lio/didomi/sdk/m4;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lio/didomi/sdk/U4;", "", "Lio/didomi/sdk/w4;", "list", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/m4$a;", "callback", "<init>", "(Ljava/util/List;Lio/didomi/sdk/z8;Lio/didomi/sdk/m4$a;)V", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "", "getItemCount", "()I", o2.h.L, "", "getItemId", "(I)J", "getItemViewType", "(I)I", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateViewHolder", "(Landroid/view/ViewGroup;I)Lio/didomi/sdk/U4;", "holder", "", "payloads", "onBindViewHolder", "(Lio/didomi/sdk/U4;ILjava/util/List;)V", "(Lio/didomi/sdk/U4;I)V", "", "(Ljava/util/List;)V", "", "purposeId", "bulkActionState", "", "accessibilityAnnounceState", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V", "Ljava/util/List;", "Lio/didomi/sdk/z8;", "c", "Lio/didomi/sdk/m4$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "indentPurposePosition", "android_release"}, mv = {1, 8, 0})
public final class C1831m4 extends RecyclerView.Adapter<U4> {
    private final List<InterfaceC1931w4> a;
    private final C1965z8 b;
    private final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8701d;

    /* JADX INFO: renamed from: io.didomi.sdk.m4$a */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH&¢\u0006\u0004\b\u0005\u0010\u000eJ\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H&¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H&¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0011¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/m4$a;", "", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "a", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/w4$a;", "type", "", "id", "(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/o0;", "dataProcessing", "(Lio/didomi/sdk/o0;)V", "(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()V", "c", "android_release"}, mv = {1, 8, 0})
    public interface a {
        void a();

        void a(InterfaceC1847o0 dataProcessing);

        void a(DidomiToggle.b state);

        void a(InterfaceC1931w4.a type, String id);

        void a(InterfaceC1931w4.a type, String id, DidomiToggle.b state);

        void b();

        void c();
    }

    /* JADX INFO: renamed from: io.didomi.sdk.m4$b */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[InterfaceC1931w4.a.values().length];
            try {
                iArr[InterfaceC1931w4.a.AdditionalDataProcessing.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InterfaceC1931w4.a.BulkAction.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InterfaceC1931w4.a.Category.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InterfaceC1931w4.a.CategoryHeader.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[InterfaceC1931w4.a.Header.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[InterfaceC1931w4.a.Purpose.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[InterfaceC1931w4.a.SensitivePersonalInfoButton.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[InterfaceC1931w4.a.VendorButton.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[InterfaceC1931w4.a.SdkStorageDisclosure.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            a = iArr;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.m4$c */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Integer> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            Iterator it = C1831m4.this.a.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                }
                if (((InterfaceC1931w4) it.next()) instanceof PurposeDisplayItem) {
                    break;
                }
                i++;
            }
            return Integer.valueOf(i);
        }
    }

    public C1831m4(List<InterfaceC1931w4> list, C1965z8 themeProvider, a callback) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.a = list;
        this.b = themeProvider;
        this.c = callback;
        this.f8701d = LazyKt__LazyJVMKt.lazy(new c());
        setHasStableIds(true);
    }

    private final int a() {
        return ((Number) this.f8701d.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(U4 holder, A4 displayFooter, C1831m4 this$0, View view) {
        Intrinsics.checkNotNullParameter(holder, "$holder");
        Intrinsics.checkNotNullParameter(displayFooter, "$displayFooter");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        holder.itemView.setImportantForAccessibility(1);
        if (displayFooter instanceof PurposeDisplayFooterSensitivePersonalInfo) {
            this$0.c.b();
        } else if (displayFooter instanceof PurposeDisplayFooterVendor) {
            this$0.c.c();
        }
    }

    public static /* synthetic */ void a(C1831m4 c1831m4, String str, DidomiToggle.b bVar, DidomiToggle.b bVar2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        c1831m4.a(str, bVar, bVar2, z);
    }

    private final void a(DidomiToggle.b bVar) {
        List<InterfaceC1931w4> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof PurposeDisplayBulkAction) {
                arrayList.add(obj);
            }
        }
        PurposeDisplayBulkAction purposeDisplayBulkAction = (PurposeDisplayBulkAction) p.firstOrNull((List) arrayList);
        if (purposeDisplayBulkAction != null) {
            int iIndexOf = this.a.indexOf(purposeDisplayBulkAction);
            purposeDisplayBulkAction.a(bVar);
            notifyItemChanged(iIndexOf, purposeDisplayBulkAction);
        }
    }

    public static /* synthetic */ void b(C1831m4 c1831m4, String str, DidomiToggle.b bVar, DidomiToggle.b bVar2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        c1831m4.b(str, bVar, bVar2, z);
    }

    public final void a(String purposeId, DidomiToggle.b state, DidomiToggle.b bulkActionState, boolean z) {
        Object next;
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(bulkActionState, "bulkActionState");
        List<InterfaceC1931w4> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof PurposeDisplayItem) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PurposeDisplayItem purposeDisplayItem = (PurposeDisplayItem) next;
            if (purposeDisplayItem.getType() == InterfaceC1931w4.a.Category && Intrinsics.areEqual(purposeDisplayItem.getDataId(), purposeId)) {
                break;
            }
        }
        PurposeDisplayItem purposeDisplayItem2 = (PurposeDisplayItem) next;
        if (purposeDisplayItem2 != null) {
            int iIndexOf = this.a.indexOf(purposeDisplayItem2);
            purposeDisplayItem2.a(state);
            purposeDisplayItem2.a(z);
            notifyItemChanged(iIndexOf, purposeDisplayItem2);
        }
        a(bulkActionState);
    }

    public final void a(List<? extends InterfaceC1931w4> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        List<InterfaceC1931w4> list2 = this.a;
        list2.removeAll(CollectionsKt___CollectionsKt.toSet(CollectionsKt___CollectionsJvmKt.filterIsInstance(list2, G4.class)));
        list2.addAll(1, list);
        for (G4 g4 : CollectionsKt___CollectionsJvmKt.filterIsInstance(list2, G4.class)) {
            notifyItemChanged(list2.indexOf(g4), g4);
        }
    }

    public final void b(String purposeId, DidomiToggle.b state, DidomiToggle.b bulkActionState, boolean z) {
        Object next;
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(bulkActionState, "bulkActionState");
        List<InterfaceC1931w4> list = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof PurposeDisplayItem) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            PurposeDisplayItem purposeDisplayItem = (PurposeDisplayItem) next;
            if (purposeDisplayItem.getType() == InterfaceC1931w4.a.Purpose && Intrinsics.areEqual(purposeDisplayItem.getDataId(), purposeId)) {
                break;
            }
        }
        PurposeDisplayItem purposeDisplayItem2 = (PurposeDisplayItem) next;
        if (purposeDisplayItem2 != null) {
            int iIndexOf = this.a.indexOf(purposeDisplayItem2);
            purposeDisplayItem2.a(state);
            purposeDisplayItem2.a(z);
            notifyItemChanged(iIndexOf, purposeDisplayItem2);
        }
        a(bulkActionState);
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
        switch (b.a[this.a.get(i).getType().ordinal()]) {
            case 1:
                return 4;
            case 2:
                return 2;
            case 3:
            case 6:
                return 3;
            case 4:
                return 1;
            case 5:
                return 0;
            case 7:
            case 8:
                return 6;
            case 9:
                return 5;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        onBindViewHolder((U4) viewHolder, i, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final U4 holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof I4) {
            InterfaceC1931w4 interfaceC1931w4 = this.a.get(i);
            Intrinsics.checkNotNull(interfaceC1931w4, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayHeader");
            ((I4) holder).a((PurposeDisplayHeader) interfaceC1931w4);
            return;
        }
        if (holder instanceof C1891s4) {
            InterfaceC1931w4 interfaceC1931w42 = this.a.get(i);
            Intrinsics.checkNotNull(interfaceC1931w42, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayCategoryHeader");
            ((C1891s4) holder).a((PurposeDisplayCategoryHeader) interfaceC1931w42);
            return;
        }
        if (holder instanceof C1851o4) {
            InterfaceC1931w4 interfaceC1931w43 = this.a.get(i);
            Intrinsics.checkNotNull(interfaceC1931w43, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayBulkAction");
            ((C1851o4) holder).a((PurposeDisplayBulkAction) interfaceC1931w43);
            return;
        }
        if (holder instanceof K4) {
            InterfaceC1931w4 interfaceC1931w44 = this.a.get(i);
            Intrinsics.checkNotNull(interfaceC1931w44, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayItem");
            ((K4) holder).a((PurposeDisplayItem) interfaceC1931w44, i - a());
            return;
        }
        if (holder instanceof C1841n4) {
            InterfaceC1931w4 interfaceC1931w45 = this.a.get(i);
            Intrinsics.checkNotNull(interfaceC1931w45, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayAdditionalDataProcessing");
            ((C1841n4) holder).a((PurposeDisplayAdditionalDataProcessing) interfaceC1931w45);
        } else if (holder instanceof M4) {
            InterfaceC1931w4 interfaceC1931w46 = this.a.get(i);
            Intrinsics.checkNotNull(interfaceC1931w46, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplaySdkStorageDisclosure");
            ((M4) holder).a((PurposeDisplaySdkStorageDisclosure) interfaceC1931w46);
        } else if (holder instanceof H4) {
            InterfaceC1931w4 interfaceC1931w47 = this.a.get(i);
            Intrinsics.checkNotNull(interfaceC1931w47, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayFooter");
            final A4 a4 = (A4) interfaceC1931w47;
            ((H4) holder).a(a4);
            holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.cf
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C1831m4.a(holder, a4, this, view);
                }
            });
        }
    }

    public void onBindViewHolder(U4 holder, int i, List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            super.onBindViewHolder(holder, i, payloads);
        } else {
            if (!(holder instanceof K4)) {
                super.onBindViewHolder(holder, i, payloads);
                return;
            }
            Object objFirst = p.first((List<? extends Object>) payloads);
            Intrinsics.checkNotNull(objFirst, "null cannot be cast to non-null type io.didomi.sdk.purpose.mobile.model.PurposeDisplayItem");
            ((K4) holder).a((PurposeDisplayItem) objFirst);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public U4 onCreateViewHolder(ViewGroup parent, int i) throws Throwable {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        switch (i) {
            case 0:
                C1908u1 c1908u1A = C1908u1.a(layoutInflaterFrom, parent, false);
                Intrinsics.checkNotNullExpressionValue(c1908u1A, "inflate(inflater, parent, false)");
                return new I4(c1908u1A, this.b);
            case 1:
                C1888s1 c1888s1A = C1888s1.a(layoutInflaterFrom, parent, false);
                Intrinsics.checkNotNullExpressionValue(c1888s1A, "inflate(inflater, parent, false)");
                return new C1891s4(c1888s1A, this.b);
            case 2:
                C1878r1 c1878r1A = C1878r1.a(layoutInflaterFrom, parent, false);
                Intrinsics.checkNotNullExpressionValue(c1878r1A, "inflate(inflater, parent, false)");
                return new C1851o4(c1878r1A, this.c, this.b);
            case 3:
                C1918v1 c1918v1A = C1918v1.a(layoutInflaterFrom, parent, false);
                Intrinsics.checkNotNullExpressionValue(c1918v1A, "inflate(inflater, parent, false)");
                return new K4(c1918v1A, this.c, this.b);
            case 4:
                C1868q1 c1868q1A = C1868q1.a(layoutInflaterFrom, parent, false);
                Intrinsics.checkNotNullExpressionValue(c1868q1A, "inflate(inflater, parent, false)");
                return new C1841n4(c1868q1A, this.c, this.b);
            case 5:
                C1928w1 c1928w1A = C1928w1.a(layoutInflaterFrom, parent, false);
                Intrinsics.checkNotNullExpressionValue(c1928w1A, "inflate(inflater, parent, false)");
                return new M4(c1928w1A, this.c, this.b);
            case 6:
                C1898t1 c1898t1A = C1898t1.a(layoutInflaterFrom, parent, false);
                Intrinsics.checkNotNullExpressionValue(c1898t1A, "inflate(inflater, parent, false)");
                return new H4(c1898t1A, this.b);
            default:
                throw new Throwable("Unknown viewType (" + i + ')');
        }
    }
}
