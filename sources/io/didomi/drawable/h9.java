package io.didomi.drawable;

import android.os.Build;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.U8;
import io.didomi.drawable.Vendor;
import io.didomi.drawable.events.Event;
import io.didomi.drawable.events.PreferencesClickAgreeToAllVendorsEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllVendorsEvent;
import io.didomi.drawable.events.PreferencesClickVendorAgreeEvent;
import io.didomi.drawable.events.PreferencesClickVendorDisagreeEvent;
import io.didomi.drawable.models.DataCategory;
import io.didomi.drawable.models.DeviceStorageDisclosure;
import io.didomi.drawable.models.DeviceStorageDisclosures;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

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
@Metadata(d1 = {"\u0000ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010$\n\u0002\b\u000b\b\u0017\u0018\u00002\u00020\u0001BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0014¢\u0006\u0004\b \u0010\u001aJ\u0015\u0010\"\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b\"\u0010\u001eJ\r\u0010$\u001a\u00020#¢\u0006\u0004\b$\u0010%J\u0015\u0010&\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b&\u0010\u001eJ\u0015\u0010)\u001a\u00020\u00182\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u0015\u0010+\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b+\u0010,J\u0015\u0010.\u001a\u00020-2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b.\u0010/J)\u00104\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\b\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b4\u00105J\u001d\u00107\u001a\b\u0012\u0004\u0012\u000206022\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\b7\u00108J\u0015\u00109\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b9\u0010,J\u0015\u0010:\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b:\u0010,J\u0015\u0010<\u001a\u00020;2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b<\u0010=J)\u0010>\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\b\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b>\u00105J)\u0010?\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\b\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b?\u00105J)\u0010@\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\b\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\b@\u00105J)\u0010B\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\b\u0012\u0004\u0012\u00020A02\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\bB\u00105J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u000206022\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\b\u0015\u00108J\u0017\u0010C\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020EH\u0000¢\u0006\u0004\bF\u0010GJ\u000f\u0010\u001d\u001a\u000201H\u0000¢\u0006\u0004\b\u001d\u0010HJ\u0019\u0010I\u001a\u0004\u0018\u0001012\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\bI\u0010DJ\u0017\u0010J\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\bJ\u0010DJ\u0017\u0010K\u001a\u00020E2\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\bK\u0010LJ\u0019\u0010M\u001a\u0004\u0018\u0001012\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\bM\u0010DJ\u000f\u0010N\u001a\u00020EH\u0000¢\u0006\u0004\bN\u0010GJ\u0019\u0010O\u001a\u0004\u0018\u0001012\u0006\u0010!\u001a\u00020\u001bH\u0000¢\u0006\u0004\bO\u0010DJ\u0015\u0010Q\u001a\u00020\u00182\u0006\u0010P\u001a\u00020\u0014¢\u0006\u0004\bQ\u0010\u001aJ\r\u0010\u0019\u001a\u00020#¢\u0006\u0004\b\u0019\u0010%J\r\u0010)\u001a\u00020#¢\u0006\u0004\b)\u0010%J\u0015\u0010R\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\bR\u0010SJ\u0015\u0010T\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\bT\u0010,J\u0015\u0010U\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\bU\u0010,J\u0015\u0010V\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\bV\u0010,J\r\u0010X\u001a\u00020W¢\u0006\u0004\bX\u0010YJ\r\u0010Z\u001a\u00020W¢\u0006\u0004\bZ\u0010YJ\u0015\u0010)\u001a\u00020\u00182\u0006\u0010[\u001a\u00020\u0014¢\u0006\u0004\b)\u0010\u001aJ\r\u0010\\\u001a\u00020\u0018¢\u0006\u0004\b\\\u0010]J\r\u0010^\u001a\u00020\u0018¢\u0006\u0004\b^\u0010]J\u001d\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010[\u001a\u00020\u0014¢\u0006\u0004\b \u0010_J\u001d\u0010)\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010`\u001a\u00020\u0014¢\u0006\u0004\b)\u0010_J\u001d\u0010\u0019\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010a\u001a\u00020\u0014¢\u0006\u0004\b\u0019\u0010_J\u0015\u0010c\u001a\u00020b2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\bc\u0010dJ\u0015\u0010f\u001a\u00020e2\u0006\u0010!\u001a\u00020\u001b¢\u0006\u0004\bf\u0010gJ\u0013\u0010j\u001a\b\u0012\u0004\u0012\u00020i0h¢\u0006\u0004\bj\u0010kJ\u0017\u0010)\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\b)\u0010,J\u0017\u0010)\u001a\u00020#2\u0006\u0010l\u001a\u000201H\u0002¢\u0006\u0004\b)\u0010mJ\u0019\u0010\u0019\u001a\u0004\u0018\u0001062\u0006\u0010n\u001a\u000201H\u0002¢\u0006\u0004\b\u0019\u0010oJ\u0017\u0010p\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\bp\u0010,J\u0017\u0010q\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\bq\u0010DJ\u0017\u0010r\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\br\u0010DJ\u0017\u0010Q\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\bQ\u0010\u001eJ\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u0019\u0010\u001eJ\u0017\u0010s\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\bs\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\b \u0010\u001eJ\u0017\u0010t\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\bt\u0010\u001eJ\u0017\u0010X\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\bX\u0010,J\u0017\u0010u\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002¢\u0006\u0004\bu\u0010,J\u0015\u0010<\u001a\b\u0012\u0004\u0012\u00020i02H\u0002¢\u0006\u0004\b<\u0010kJ/\u0010)\u001a\b\u0012\u0004\u0012\u000203022\f\u0010x\u001a\b\u0012\u0004\u0012\u00020w0v2\n\b\u0002\u0010z\u001a\u0004\u0018\u00010yH\u0002¢\u0006\u0004\b)\u0010{R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010|R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010}R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010~R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010\u007fR\u0015\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bs\u0010\u0080\u0001R\u0015\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b>\u0010\u0081\u0001R\u0015\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b4\u0010\u0082\u0001R\u0019\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\u000e\n\u0005\b7\u0010\u0083\u0001\u001a\u0005\b:\u0010\u0084\u0001R\u001e\u0010\u0087\u0001\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bO\u0010\u0085\u0001\u001a\u0005\b\u0086\u0001\u0010%R%\u0010\u008a\u0001\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0005\bB\u0010\u0088\u0001\u001a\u0004\b&\u0010%\"\u0005\b)\u0010\u0089\u0001R#\u0010\u008b\u0001\u001a\b\u0012\u0004\u0012\u00020\u001b028FX\u0086\u0084\u0002¢\u0006\r\n\u0005\b<\u0010\u0085\u0001\u001a\u0004\bB\u0010kR\u001e\u0010\u008d\u0001\u001a\u00020#8FX\u0086\u0084\u0002¢\u0006\u000e\n\u0005\b?\u0010\u0085\u0001\u001a\u0005\b\u008c\u0001\u0010%R\u001d\u0010\u008e\u0001\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\r\n\u0005\bM\u0010\u0085\u0001\u001a\u0004\b@\u0010%R\u001e\u0010\u0090\u0001\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0015\u0010\u0085\u0001\u001a\u0005\b\u008f\u0001\u0010%R\u001f\u0010\u0093\u0001\u001a\u00030\u0091\u00018BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b@\u0010\u0085\u0001\u001a\u0005\bU\u0010\u0092\u0001R \u0010\u001c\u001a\t\u0012\u0004\u0012\u00020\u001b0\u0094\u00018\u0006¢\u0006\u000e\n\u0005\bC\u0010\u0095\u0001\u001a\u0005\bu\u0010\u0096\u0001R \u0010\u0017\u001a\t\u0012\u0004\u0012\u00020\u00140\u0094\u00018\u0006¢\u0006\u000e\n\u0005\br\u0010\u0095\u0001\u001a\u0005\bt\u0010\u0096\u0001R!\u0010\u001f\u001a\t\u0012\u0004\u0012\u00020\u00140\u0094\u00018\u0006¢\u0006\u000f\n\u0005\bI\u0010\u0095\u0001\u001a\u0006\b\u0097\u0001\u0010\u0096\u0001R\"\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020#0\u0094\u00018\u0006¢\u0006\u000f\n\u0005\bK\u0010\u0095\u0001\u001a\u0006\b\u0098\u0001\u0010\u0096\u0001R\u001e\u0010\u009b\u0001\u001a\u00020#8FX\u0086\u0084\u0002¢\u0006\u000e\n\u0005\bq\u0010\u0085\u0001\u001a\u0005\b\u009a\u0001\u0010%R\u0012\u0010\u009c\u0001\u001a\u00020W8F¢\u0006\u0006\u001a\u0004\bC\u0010YR\u0012\u0010\u009d\u0001\u001a\u00020W8F¢\u0006\u0006\u001a\u0004\br\u0010YR\u0017\u0010¡\u0001\u001a\u0005\u0018\u00010\u009e\u00018F¢\u0006\b\u001a\u0006\b\u009f\u0001\u0010 \u0001R\u0018\u0010£\u0001\u001a\u0004\u0018\u00010;8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\bJ\u0010¢\u0001R\u0018\u0010¤\u0001\u001a\u0004\u0018\u00010;8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b.\u0010¢\u0001R\u0015\u0010¥\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b?\u0010HR\u0015\u0010¦\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bM\u0010HR\u0015\u0010§\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bR\u0010HR\u0015\u0010¨\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bV\u0010HR\u0015\u0010©\u0001\u001a\u00020W8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bT\u0010YR\u0015\u0010ª\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bO\u0010HR\u0015\u0010«\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bI\u0010HR\u0015\u0010¬\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bc\u0010HR\u0015\u0010\u00ad\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bK\u0010HR\u0015\u0010®\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010HR\u0016\u0010°\u0001\u001a\u00020W8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b¯\u0001\u0010YR\u0016\u0010²\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b±\u0001\u0010HR\u0016\u0010³\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010HR\u0015\u0010´\u0001\u001a\u0002018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b+\u0010HR\u0015\u0010µ\u0001\u001a\u0002018DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bq\u0010HR\u0016\u0010·\u0001\u001a\u0002018DX\u0084\u0004¢\u0006\u0007\u001a\u0005\b¶\u0001\u0010HR#\u0010º\u0001\u001a\u000f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u0002010¸\u00018BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b9\u0010¹\u0001R\u001b\u0010»\u0001\u001a\b\u0012\u0004\u0012\u000201028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b>\u0010kR\u001b\u0010¼\u0001\u001a\b\u0012\u0004\u0012\u000201028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b4\u0010kR\u0015\u0010½\u0001\u001a\u0002018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bs\u0010HR\u001b\u0010¾\u0001\u001a\b\u0012\u0004\u0012\u000201028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b7\u0010kR\u001b\u0010¿\u0001\u001a\b\u0012\u0004\u0012\u000201028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b \u0010kR\u001b\u0010À\u0001\u001a\b\u0012\u0004\u0012\u000201028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010kR\u0015\u0010Á\u0001\u001a\u0002018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bf\u0010HR\u0015\u0010Â\u0001\u001a\u0002018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bp\u0010H¨\u0006Ã\u0001"}, d2 = {"Lio/didomi/sdk/h9;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/C3;", "logoProvider", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", b4.p, "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "selectedVendorConsentState", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/models/InternalVendor;", "selectedVendor", "B", "(Lio/didomi/sdk/models/InternalVendor;)V", "selectedVendorLegIntState", "c", "vendor", "D", "", "a0", "()Z", "C", "Lio/didomi/sdk/events/Event;", NotificationCompat.CATEGORY_EVENT, "a", "(Lio/didomi/sdk/events/Event;)V", "z", "(Lio/didomi/sdk/models/InternalVendor;)Z", "", "w", "(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/CharSequence;", "Lkotlin/Pair;", "", "", "Lio/didomi/sdk/r0;", "g", "(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;", "Lio/didomi/sdk/models/InternalPurpose;", "h", "(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;", "F", "E", "Landroid/text/Spanned;", CampaignEx.JSON_KEY_AD_K, "(Lio/didomi/sdk/models/InternalVendor;)Landroid/text/Spanned;", InneractiveMediationDefs.GENDER_FEMALE, "l", "o", "Lio/didomi/sdk/m0;", "j", TtmlNode.TAG_P, "(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;", "Landroid/text/SpannableString;", "S", "()Landroid/text/SpannableString;", "()Ljava/lang/String;", "r", "x", "s", "(Lio/didomi/sdk/models/InternalVendor;)Landroid/text/SpannableString;", InneractiveMediationDefs.GENDER_MALE, RequestConfiguration.MAX_AD_CONTENT_RATING_T, "i", "status", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "y", "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "H", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "I", "Lio/didomi/sdk/a;", "K", "()Lio/didomi/sdk/a;", "N", "state", "c0", "()V", "d0", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "consentStatus", "legIntState", "Lio/didomi/sdk/U8$c$b;", "v", "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;", "Lio/didomi/sdk/U8$c;", "u", "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c;", "", "Lio/didomi/sdk/U8;", "X", "()Ljava/util/List;", "id", "(Ljava/lang/String;)Z", "purposeId", "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;", "A", "t", CampaignEx.JSON_KEY_AD_Q, "e", "L", "J", "", "Lio/didomi/sdk/o0;", "dataProcessingList", "Lio/didomi/sdk/models/InternalVendor$a;", "dataRetention", "(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;", "Lio/didomi/sdk/apiEvents/b;", "Lio/didomi/sdk/H;", "Lio/didomi/sdk/M2;", "Lio/didomi/sdk/v3;", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/G8;", "Lio/didomi/sdk/V8;", "Lio/didomi/sdk/C3;", "()Lio/didomi/sdk/C3;", "Lkotlin/Lazy;", "b0", "isTCFEnabled", "Z", "(Z)V", "ignoreVendorDataChanges", "allRequiredVendors", "P", "shouldHandleAllVendorsState", "canShowDetails", "R", "shouldVendorsBeEnabledByDefault", "Lio/didomi/sdk/k$g$a;", "()Lio/didomi/sdk/k$g$a;", "preferencesContent", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/MutableLiveData;", "()Landroidx/lifecycle/MutableLiveData;", "O", "M", "selectedVendorDeviceStorageDisclosuresLoaded", "Q", "shouldHideDidomiLogo", "closeButtonAccessibility", "closeDetailsButtonAccessibility", "Lio/didomi/sdk/U8$a;", "W", "()Lio/didomi/sdk/U8$a;", "vendorItemBulk", "()Landroid/text/Spanned;", "headerDescription", "footerLabel", "allVendorsText", "appTitle", "headerTitle", "saveButtonLabel", "saveButtonAccessibility", "additionalDataProcessingTitle", "consentDataProcessingTitle", "essentialPurposesTitle", "cookieSectionTitle", "legitimateInterestDataProcessingTitle", "U", "userInfoButtonAccessibility", "V", "userInfoButtonLabel", "vendorPolicyAccessibilityAction", "iabPolicyAccessibilityAction", "dataCategoriesTitle", "Y", "vendorLegIntClaim", "", "()Ljava/util/Map;", "nameMacroForSelectedVendor", "accessibilityStateBulkActionDescription", "accessibilityStateToggleVendorActionDescription", "accessibilityOpenVendorActionDescription", "accessibilitySwitchStateDescription", "accessibilityConsentStateActionDescription", "accessibilityLIStateActionDescription", "deviceStorageLink", "iabPolicyLink", "android_release"}, mv = {1, 8, 0})
public class h9 extends ViewModel {
    private final io.didomi.drawable.apiEvents.b a;
    private final H b;
    private final M2 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C1920v3 f8572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final C1965z8 f8573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final G8 f8574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final V8 f8575g;
    private final C3 h;
    private final Lazy i;
    private boolean j;
    private final Lazy k;
    private final Lazy l;
    private final Lazy m;
    private final Lazy n;
    private final Lazy o;
    private final MutableLiveData<InternalVendor> p;
    private final MutableLiveData<DidomiToggle.b> q;
    private final MutableLiveData<DidomiToggle.b> r;
    private final MutableLiveData<Boolean> s;
    private final Lazy t;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[DidomiToggle.b.values().length];
            try {
                iArr[DidomiToggle.b.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DidomiToggle.b.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DidomiToggle.b.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "Lio/didomi/sdk/models/InternalVendor;", "a", "()Ljava/util/List;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<List<? extends InternalVendor>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<InternalVendor> invoke() {
            return C1870q3.a(CollectionsKt___CollectionsKt.toList(h9.this.f8575g.q()));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Boolean> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(I.c(h9.this.b));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, mv = {1, 8, 0}, xi = 48)
    public static final class d<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((InterfaceC1847o0) t).getName(), ((InterfaceC1847o0) t2).getName());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Boolean> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1816l.b(h9.this.b.b()));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$g$a;", "a", "()Lio/didomi/sdk/k$g$a;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<C1806k.g.a> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.g.a invoke() {
            return h9.this.b.b().f().b();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Boolean> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            Set<InternalVendor> setQ = h9.this.f8575g.q();
            h9 h9Var = h9.this;
            boolean z = true;
            if ((setQ instanceof Collection) && setQ.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = setQ.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (h9Var.I((InternalVendor) it.next())) {
                        if (h9.this.f8575g.q().size() <= 1) {
                            break;
                        }
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Boolean> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(h9.this.b.b().a().l());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<Boolean> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            boolean z = true;
            if (!(!h9.this.j().isEmpty())) {
                z = false;
                break;
            }
            List<InternalVendor> listJ = h9.this.j();
            h9 h9Var = h9.this;
            if (!(listJ instanceof Collection) || !listJ.isEmpty()) {
                for (InternalVendor internalVendor : listJ) {
                    if (!C1870q3.g(internalVendor) && !h9Var.a(internalVendor)) {
                        z = false;
                        break;
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    public h9(io.didomi.drawable.apiEvents.b apiEventsRepository, H configurationRepository, M2 eventsRepository, C1920v3 languagesHelper, C1965z8 themeProvider, G8 userChoicesInfoProvider, V8 vendorRepository, C3 logoProvider) {
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        this.a = apiEventsRepository;
        this.b = configurationRepository;
        this.c = eventsRepository;
        this.f8572d = languagesHelper;
        this.f8573e = themeProvider;
        this.f8574f = userChoicesInfoProvider;
        this.f8575g = vendorRepository;
        this.h = logoProvider;
        this.i = LazyKt__LazyJVMKt.lazy(new e());
        this.k = LazyKt__LazyJVMKt.lazy(new b());
        this.l = LazyKt__LazyJVMKt.lazy(new g());
        this.m = LazyKt__LazyJVMKt.lazy(new c());
        this.n = LazyKt__LazyJVMKt.lazy(new i());
        this.o = LazyKt__LazyJVMKt.lazy(new f());
        this.p = new MutableLiveData<>();
        this.q = new MutableLiveData<>();
        this.r = new MutableLiveData<>();
        this.s = new MutableLiveData<>();
        this.t = LazyKt__LazyJVMKt.lazy(new h());
    }

    private final String A() {
        return C1920v3.a(this.f8572d, "vendor_iab_transparency_button_title", null, null, null, 14, null);
    }

    private final boolean A(InternalVendor internalVendor) {
        return b0() && internalVendor.isIabVendor() && internalVendor.getHasLegIntClaim();
    }

    private final Map<String, String> F() {
        InternalVendor value = this.p.getValue();
        String name = value != null ? value.getName() : null;
        if (name == null) {
            name = "";
        }
        return MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{targetName}", name));
    }

    private final C1806k.g.a G() {
        return (C1806k.g.a) this.o.getValue();
    }

    private final boolean J(InternalVendor internalVendor) {
        boolean zG = G(internalVendor);
        boolean zH = H(internalVendor);
        return (this.f8574f.c().contains(internalVendor) || !zG) && (this.f8574f.e().contains(internalVendor) || !zH);
    }

    private final boolean K(InternalVendor internalVendor) {
        boolean zG = G(internalVendor);
        boolean zH = H(internalVendor);
        boolean zContains = this.f8574f.g().contains(internalVendor);
        boolean z = (this.f8574f.e().contains(internalVendor) && zH) ? false : true;
        return ((zContains || !zG) && z) || (R() && z);
    }

    private final void L(InternalVendor internalVendor) {
        this.f8574f.e(internalVendor);
    }

    private final boolean R() {
        return ((Boolean) this.n.getValue()).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060 A[PHI: r5
      0x0060: PHI (r5v6 java.lang.Integer) = (r5v5 java.lang.Integer), (r5v10 java.lang.Integer) binds: [B:26:0x008e, B:13:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.List<io.didomi.drawable.DataProcessingDisplay> a(java.util.Collection<? extends io.didomi.drawable.InterfaceC1847o0> r8, io.didomi.drawable.models.InternalVendor.DataRetention r9) {
        /*
            r7 = this;
            io.didomi.sdk.h9$d r0 = new io.didomi.sdk.h9$d
            r0.<init>()
            java.util.List r8 = kotlin.collections.p.sortedWith(r8, r0)
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = 10
            int r1 = kotlin.collections.p.collectionSizeOrDefault(r8, r1)
            r0.<init>(r1)
            java.util.Iterator r8 = r8.iterator()
        L18:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto Laf
            java.lang.Object r1 = r8.next()
            io.didomi.sdk.o0 r1 = (io.didomi.drawable.InterfaceC1847o0) r1
            r2 = 0
            if (r9 != 0) goto L3b
            io.didomi.sdk.r0 r3 = new io.didomi.sdk.r0
            java.lang.String r1 = r1.getName()
            java.lang.CharSequence r1 = kotlin.text.g.trim(r1)
            java.lang.String r1 = r1.toString()
            r4 = 2
            r3.<init>(r1, r2, r4, r2)
            goto Laa
        L3b:
            io.didomi.sdk.r0 r3 = new io.didomi.sdk.r0
            java.lang.String r4 = r1.getName()
            java.lang.CharSequence r4 = kotlin.text.g.trim(r4)
            java.lang.String r4 = r4.toString()
            boolean r5 = r1 instanceof io.didomi.drawable.models.InternalPurpose
            if (r5 == 0) goto L7a
            java.util.Map r5 = r9.a()
            if (r5 == 0) goto L62
            java.lang.String r6 = r1.getId()
            java.lang.Object r5 = r5.get(r6)
            java.lang.Integer r5 = (java.lang.Integer) r5
            if (r5 != 0) goto L60
            goto L62
        L60:
            r2 = r5
            goto La7
        L62:
            java.util.Map r5 = r9.a()
            if (r5 == 0) goto L73
            java.lang.String r1 = r1.getIabId()
            java.lang.Object r1 = r5.get(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            r2 = r1
        L73:
            if (r2 != 0) goto La7
            java.lang.Integer r2 = r9.getStdRetention()
            goto La7
        L7a:
            boolean r5 = r1 instanceof io.didomi.drawable.models.SpecialPurpose
            if (r5 == 0) goto La7
            java.util.Map r5 = r9.b()
            if (r5 == 0) goto L90
            java.lang.String r6 = r1.getId()
            java.lang.Object r5 = r5.get(r6)
            java.lang.Integer r5 = (java.lang.Integer) r5
            if (r5 != 0) goto L60
        L90:
            java.util.Map r5 = r9.b()
            if (r5 == 0) goto La1
            java.lang.String r1 = r1.getIabId()
            java.lang.Object r1 = r5.get(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            r2 = r1
        La1:
            if (r2 != 0) goto La7
            java.lang.Integer r2 = r9.getStdRetention()
        La7:
            r3.<init>(r4, r2)
        Laa:
            r0.add(r3)
            goto L18
        Laf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.h9.a(java.util.Collection, io.didomi.sdk.models.InternalVendor$a):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(InternalVendor internalVendor) {
        List<String> purposeIds = internalVendor.getPurposeIds();
        if (!(purposeIds instanceof Collection) || !purposeIds.isEmpty()) {
            Iterator<T> it = purposeIds.iterator();
            while (it.hasNext()) {
                if (!a((String) it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    private final boolean a(String str) {
        InternalPurpose internalPurposeC = this.f8575g.c(str);
        return internalPurposeC != null && C1860p3.a(internalPurposeC);
    }

    private final InternalPurpose b(String str) {
        return this.f8575g.c(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(h9 this$0, InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(vendor, "$vendor");
        this$0.b.a(vendor);
        this$0.s.postValue(Boolean.TRUE);
    }

    private final void b(InternalVendor internalVendor) {
        this.f8574f.a(internalVendor);
    }

    private final boolean b0() {
        return ((Boolean) this.i.getValue()).booleanValue();
    }

    private final List<String> c() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8572d, "reset_consent_action", null, F(), null, 10, null), C1920v3.a(this.f8572d, "disable_consent_action", null, F(), null, 10, null), C1920v3.a(this.f8572d, "enable_consent_action", null, F(), null, 10, null)});
    }

    private final void c(InternalVendor internalVendor) {
        this.f8574f.b(internalVendor);
    }

    private final List<String> d() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8572d, "enable_li_action", null, F(), null, 10, null), C1920v3.a(this.f8572d, "disable_li_action", null, F(), null, 10, null), C1920v3.a(this.f8572d, "enable_li_action", null, F(), null, 10, null)});
    }

    private final void d(InternalVendor internalVendor) {
        this.f8574f.c(internalVendor);
    }

    private final String e() {
        return C1920v3.a(this.f8572d, "open_partner_details", null, null, null, 14, null);
    }

    private final void e(InternalVendor internalVendor) {
        this.f8574f.d(internalVendor);
    }

    private final List<String> f() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8572d, "reset_all_partners", null, null, null, 14, null), C1920v3.a(this.f8572d, "disable_all_partners", null, null, null, 14, null), C1920v3.a(this.f8572d, "enable_all_partners", null, null, null, 14, null)});
    }

    private final List<String> g() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8572d, "reset_this_partner", null, null, null, 14, null), C1920v3.a(this.f8572d, "disable_this_partner", null, null, null, 14, null), C1920v3.a(this.f8572d, "enable_this_partner", null, null, null, 14, null)});
    }

    private final List<String> h() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8572d, "disabled", null, null, null, 14, null), C1920v3.a(this.f8572d, b4.r, null, null, null, 14, null), C1920v3.a(this.f8572d, "unspecified", null, null, null, 14, null)});
    }

    private final List<U8> k() {
        List<String> listG = g();
        List<String> listH = h();
        String strE = o() ? e() : null;
        List<InternalVendor> listJ = j();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listJ, 10));
        int i2 = 0;
        for (Object obj : listJ) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            List<String> list = listG;
            List<String> list2 = listG;
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new U8.Vendor((InternalVendor) obj, i2, strE, list, listH, P(), R(), o(), null, 0, 768, null));
            arrayList = arrayList2;
            i2 = i3;
            listG = list2;
        }
        return arrayList;
    }

    private final boolean o() {
        return ((Boolean) this.m.getValue()).booleanValue();
    }

    private final String q(InternalVendor internalVendor) {
        return A(internalVendor) ? "iab_vendor_disclaimer_li" : z(internalVendor) ? "iab_vendor_disclaimer" : "non_iab_vendor_disclaimer";
    }

    private final String t(InternalVendor internalVendor) {
        if (!z(internalVendor)) {
            return V5.g(internalVendor.getName());
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str = String.format("%s, %s", Arrays.copyOf(new Object[]{V5.g(internalVendor.getName()), "IAB TCF"}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String u() {
        return C1920v3.a(this.f8572d, "device_storage_link", null, null, null, 14, null);
    }

    public final String B() {
        return "https://iabeurope.eu/iab-europe-transparency-consent-framework-policies/";
    }

    public final void B(InternalVendor selectedVendor) {
        Intrinsics.checkNotNullParameter(selectedVendor, "selectedVendor");
        this.j = true;
        c(this.f8574f.e().contains(selectedVendor) ? DidomiToggle.b.DISABLED : DidomiToggle.b.ENABLED);
        b(this.f8574f.c().contains(selectedVendor) ? DidomiToggle.b.DISABLED : this.f8574f.g().contains(selectedVendor) ? DidomiToggle.b.ENABLED : DidomiToggle.b.UNKNOWN);
        this.j = false;
    }

    public final void C(final InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        M0.a.a(new Runnable() { // from class: io.didomi.sdk.ie
            @Override // java.lang.Runnable
            public final void run() {
                h9.b(this.a, vendor);
            }
        });
    }

    public final boolean C() {
        return this.j;
    }

    public final String D() {
        return C1920v3.a(this.f8572d, "data_processing_based_legitimate_interest", null, null, null, 14, null);
    }

    public final void D(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        this.p.setValue(vendor);
        this.s.setValue(Boolean.valueOf(vendor.isDeviceStorageDisclosureComplete()));
    }

    public final C3 E() {
        return this.h;
    }

    public final boolean E(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        String deviceStorageDisclosureUrl = vendor.getDeviceStorageDisclosureUrl();
        return V5.c(deviceStorageDisclosureUrl) && !V5.d(deviceStorageDisclosureUrl);
    }

    public final boolean F(InternalVendor vendor) {
        List<DeviceStorageDisclosure> disclosuresList;
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        DeviceStorageDisclosures deviceStorageDisclosures = vendor.getDeviceStorageDisclosures();
        return (deviceStorageDisclosures == null || (disclosuresList = deviceStorageDisclosures.getDisclosuresList()) == null || !(disclosuresList.isEmpty() ^ true)) ? false : true;
    }

    public final boolean G(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return !vendor.getPurposeIds().isEmpty();
    }

    public final Accessibility H() {
        return new Accessibility(I(), C1920v3.a(this.f8572d, "save_vendor_preferences_and_back_to_purpose", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    public final boolean H(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return !vendor.getLegIntPurposeIds().isEmpty();
    }

    public final String I() {
        return C1920v3.a(this.f8572d, G().g(), "save_11a80ec3", (W5) null, 4, (Object) null);
    }

    public final boolean I(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return G(vendor) || H(vendor);
    }

    public final MutableLiveData<InternalVendor> J() {
        return this.p;
    }

    public final Accessibility K() {
        DidomiToggle.b value = this.q.getValue();
        if (value == null) {
            value = DidomiToggle.b.UNKNOWN;
        }
        int iOrdinal = value.ordinal();
        return new Accessibility(r(), c().get(iOrdinal), h().get(iOrdinal), false, 0, null, 56, null);
    }

    public final MutableLiveData<DidomiToggle.b> L() {
        return this.q;
    }

    public final MutableLiveData<Boolean> M() {
        return this.s;
    }

    public final Accessibility N() {
        DidomiToggle.b value = this.r.getValue();
        if (value == null) {
            value = DidomiToggle.b.ENABLED;
        }
        Intrinsics.checkNotNullExpressionValue(value, "selectedVendorLegIntStat…idomiToggle.State.ENABLED");
        return new Accessibility(D(), d().get((value == DidomiToggle.b.ENABLED ? value : DidomiToggle.b.UNKNOWN).ordinal()), h().get(value.ordinal()), false, 0, null, 56, null);
    }

    public final MutableLiveData<DidomiToggle.b> O() {
        return this.r;
    }

    public final boolean P() {
        return ((Boolean) this.l.getValue()).booleanValue();
    }

    public final boolean Q() {
        return ((Boolean) this.t.getValue()).booleanValue();
    }

    public final SpannableString S() {
        SpannableString spannableString = new SpannableString(A() + "[didomi_link_external]");
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
        return spannableString;
    }

    public final SpannableString T() {
        SpannableString spannableString = new SpannableString(Y() + "[didomi_link_external]");
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
        return spannableString;
    }

    public final Accessibility U() {
        return new Accessibility(V(), C1920v3.a(this.f8572d, "access_user_information", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    public final String V() {
        return C1920v3.a(this.f8572d, "user_information_title", null, null, null, 14, null);
    }

    public final U8.Bulk W() {
        if (!P()) {
            return null;
        }
        String strL = l();
        boolean z = Build.VERSION.SDK_INT >= 30;
        return new U8.Bulk(strL, z ? strL : null, f(), h(), z ? null : strL, !R(), n(), 0, 128, null);
    }

    public final List<U8> X() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new U8.Header(y(), x(), U(), V(), 0, 16, null));
        if (P()) {
            U8.Bulk bulkW = W();
            Intrinsics.checkNotNull(bulkW, "null cannot be cast to non-null type io.didomi.sdk.vendors.mobile.model.VendorItem.Bulk");
            arrayList.add(bulkW);
        }
        arrayList.addAll(k());
        return arrayList;
    }

    protected final String Y() {
        return C1920v3.a(this.f8572d, "legitimate_interest", null, null, null, 14, null);
    }

    public final String Z() {
        return C1920v3.a(this.f8572d, "link_privacy_policy", null, null, null, 14, null);
    }

    public final void a(Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.c.c(event);
    }

    public final void a(InternalVendor vendor, DidomiToggle.b consentStatus) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        int i2 = a.a[consentStatus.ordinal()];
        if (i2 == 1) {
            b(vendor);
            a(new PreferencesClickVendorDisagreeEvent(vendor.getId()));
        } else if (i2 == 2) {
            d(vendor);
            a(new PreferencesClickVendorAgreeEvent(vendor.getId()));
        } else {
            if (i2 != 3) {
                return;
            }
            L(vendor);
        }
    }

    public final void a(DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(state, "state");
        int i2 = a.a[state.ordinal()];
        if (i2 == 1) {
            a(new PreferencesClickDisagreeToAllVendorsEvent());
        } else if (i2 == 2) {
            a(new PreferencesClickAgreeToAllVendorsEvent());
        }
        c0();
    }

    public final void a(boolean z) {
        this.j = z;
    }

    public final boolean a() {
        List<InternalVendor> listJ = j();
        if (!(listJ instanceof Collection) || !listJ.isEmpty()) {
            Iterator<T> it = listJ.iterator();
            while (it.hasNext()) {
                if (!J((InternalVendor) it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean a0() {
        return Intrinsics.areEqual(this.s.getValue(), Boolean.TRUE);
    }

    public final void b(InternalVendor vendor, DidomiToggle.b legIntState) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Intrinsics.checkNotNullParameter(legIntState, "legIntState");
        int i2 = a.a[legIntState.ordinal()];
        if (i2 == 1) {
            c(vendor);
            a(new PreferencesClickVendorDisagreeEvent(vendor.getId()));
        } else {
            if (i2 != 2) {
                return;
            }
            e(vendor);
            a(new PreferencesClickVendorAgreeEvent(vendor.getId()));
        }
    }

    public final void b(DidomiToggle.b selectedVendorConsentState) {
        Intrinsics.checkNotNullParameter(selectedVendorConsentState, "selectedVendorConsentState");
        this.q.setValue(selectedVendorConsentState);
    }

    public final boolean b() {
        List<InternalVendor> listJ = j();
        if (!(listJ instanceof Collection) || !listJ.isEmpty()) {
            Iterator<T> it = listJ.iterator();
            while (it.hasNext()) {
                if (!K((InternalVendor) it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void c(InternalVendor vendor, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Intrinsics.checkNotNullParameter(state, "state");
        int i2 = a.a[state.ordinal()];
        if (i2 == 1) {
            if (G(vendor)) {
                b(vendor);
            }
            if (H(vendor)) {
                c(vendor);
            }
            a(new PreferencesClickVendorDisagreeEvent(vendor.getId()));
            return;
        }
        if (i2 == 2) {
            if (G(vendor)) {
                d(vendor);
            }
            if (H(vendor)) {
                e(vendor);
            }
            a(new PreferencesClickVendorAgreeEvent(vendor.getId()));
            return;
        }
        if (i2 != 3) {
            return;
        }
        boolean zG = G(vendor);
        if (zG) {
            L(vendor);
        }
        if (H(vendor)) {
            e(vendor);
            if (zG) {
                return;
            }
            a(new PreferencesClickVendorAgreeEvent(vendor.getId()));
        }
    }

    public final void c(DidomiToggle.b selectedVendorLegIntState) {
        Intrinsics.checkNotNullParameter(selectedVendorLegIntState, "selectedVendorLegIntState");
        this.r.setValue(selectedVendorLegIntState);
    }

    public final void c0() {
        this.a.m();
    }

    public final void d(DidomiToggle.b status) {
        Intrinsics.checkNotNullParameter(status, "status");
        G8 g8 = this.f8574f;
        g8.g().clear();
        g8.c().clear();
        g8.i().clear();
        g8.e().clear();
        for (InternalVendor internalVendor : j()) {
            if (G(internalVendor)) {
                if (status == DidomiToggle.b.DISABLED) {
                    g8.c().add(internalVendor);
                } else if (status == DidomiToggle.b.ENABLED) {
                    g8.g().add(internalVendor);
                }
            }
            if (H(internalVendor)) {
                if (status == DidomiToggle.b.DISABLED) {
                    g8.e().add(internalVendor);
                } else {
                    g8.i().add(internalVendor);
                }
            }
        }
    }

    public final void d0() {
        this.a.l();
    }

    public final Pair<String, List<DataProcessingDisplay>> f(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Set<InterfaceC1847o0> setC = this.f8575g.c(vendor);
        if (setC.isEmpty()) {
            return null;
        }
        return new Pair<>(i(), a(setC, vendor.getDataRetention()));
    }

    public final Pair<String, List<DataProcessingDisplay>> g(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        List<InternalPurpose> listH = h(vendor);
        if (listH.isEmpty()) {
            return null;
        }
        return new Pair<>(r(), a(listH, vendor.getDataRetention()));
    }

    public final List<InternalPurpose> h(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        List<String> purposeIds = vendor.getPurposeIds();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = purposeIds.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeB = b((String) it.next());
            if (internalPurposeB != null) {
                arrayList.add(internalPurposeB);
            }
        }
        return arrayList;
    }

    public final String i() {
        return C1920v3.a(this.f8572d, "additional_data_processing", null, null, null, 14, null);
    }

    public final String i(InternalVendor vendor) {
        String strB;
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Map<String, String> mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to("{vendorName}", vendor.getName()));
        Long cookieMaxAgeSeconds = vendor.getCookieMaxAgeSeconds();
        String strA = vendor.getUsesNonCookieAccess() ? C1920v3.a(this.f8572d, "other_means_of_storage", (W5) null, (Map) null, 6, (Object) null) : null;
        if (cookieMaxAgeSeconds == null) {
            return strA;
        }
        if (cookieMaxAgeSeconds.longValue() > 0) {
            mapMutableMapOf.put("{humanizedStorageDuration}", C1917v0.a.b(this.f8572d, cookieMaxAgeSeconds.longValue()));
            strB = this.f8572d.b("vendor_storage_duration", W5.NONE, mapMutableMapOf) + '.';
        } else {
            strB = this.f8572d.b("browsing_session_storage_duration", W5.NONE, mapMutableMapOf);
        }
        if (strA == null) {
            return strB;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str = String.format("%s %s", Arrays.copyOf(new Object[]{strB, strA}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final List<InternalVendor> j() {
        return (List) this.k.getValue();
    }

    public final Pair<String, List<DataCategoryDisplay>> j(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Set<DataCategory> setA = this.f8575g.a(vendor);
        if (setA.isEmpty()) {
            return null;
        }
        String strT = t();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setA, 10));
        for (DataCategory dataCategory : setA) {
            arrayList.add(new DataCategoryDisplay(dataCategory.getName(), StringsKt__StringsKt.trim(dataCategory.getDescription()).toString()));
        }
        return new Pair<>(strT, arrayList);
    }

    public final Spanned k(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        String strU = u();
        String deviceStorageDisclosureUrl = vendor.getDeviceStorageDisclosureUrl();
        if (deviceStorageDisclosureUrl == null) {
            deviceStorageDisclosureUrl = "";
        }
        return V5.b(strU, deviceStorageDisclosureUrl);
    }

    public final String l() {
        return C1920v3.a(this.f8572d, "all_partners", null, null, null, 14, null) + " (" + j().size() + ')';
    }

    public final Pair<String, List<DataProcessingDisplay>> l(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Set<InternalPurpose> setB = this.f8575g.b(vendor);
        if (setB.isEmpty()) {
            return null;
        }
        return new Pair<>(v(), a(setB, vendor.getDataRetention()));
    }

    public final String m() {
        return C1761f4.a.a(this.b, this.f8572d);
    }

    public final String m(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Vendor.Url urlA = C1870q3.a(vendor, this.f8572d.e(), this.f8572d.c(), "en");
        if (urlA != null) {
            return urlA.getLegIntClaim();
        }
        return null;
    }

    public final DidomiToggle.b n() {
        return b() ? DidomiToggle.b.ENABLED : a() ? DidomiToggle.b.DISABLED : DidomiToggle.b.UNKNOWN;
    }

    public final List<InternalPurpose> n(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        List<String> legIntPurposeIds = vendor.getLegIntPurposeIds();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = legIntPurposeIds.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeB = b((String) it.next());
            if (internalPurposeB != null) {
                arrayList.add(internalPurposeB);
            }
        }
        return arrayList;
    }

    public final Pair<String, List<DataProcessingDisplay>> o(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        List<InternalPurpose> listN = n(vendor);
        if (listN.isEmpty()) {
            return null;
        }
        return new Pair<>(D(), a(listN, vendor.getDataRetention()));
    }

    public final Accessibility p() {
        return new Accessibility(C1920v3.a(this.f8572d, "close", null, null, null, 14, null), C1920v3.a(this.f8572d, "go_back_to_purposes_list", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    public final String p(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return C1925v8.a.a(C1920v3.a(this.f8572d, q(vendor), null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{name}", vendor.getName())), null, 10, null));
    }

    public final Accessibility q() {
        return new Accessibility(C1920v3.a(this.f8572d, "close", null, null, null, 14, null), C1920v3.a(this.f8572d, "go_back_to_partners_list", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    public final String r() {
        return C1920v3.a(this.f8572d, "data_processing_based_consent", null, null, null, 14, null);
    }

    public final String r(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        String privacyPolicyUrl = vendor.getPrivacyPolicyUrl();
        if (privacyPolicyUrl != null && !StringsKt__StringsJVMKt.isBlank(privacyPolicyUrl)) {
            return vendor.getPrivacyPolicyUrl();
        }
        Vendor.Url urlA = C1870q3.a(vendor, this.f8572d.e(), this.f8572d.c(), "en");
        if (urlA != null) {
            return urlA.getPrivacy();
        }
        return null;
    }

    public final SpannableString s(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        SpannableString spannableString = new SpannableString(x(vendor) + "[didomi_link_external]");
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
        return spannableString;
    }

    public final String s() {
        return C1920v3.a(this.f8572d, "device_storage", null, null, null, 14, null);
    }

    protected final String t() {
        return C1920v3.a(this.f8572d, "categories_of_data", null, null, null, 14, null);
    }

    public final U8.Vendor u(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return new U8.Vendor(vendor, j().indexOf(vendor), o() ? e() : null, g(), h(), P(), R(), o(), v(vendor), 0, 512, null);
    }

    public final U8.Vendor.DetailedInfo v(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return new U8.Vendor.DetailedInfo(w(vendor), t(vendor), I(vendor) ? y(vendor) : null, (C1870q3.g(vendor) || R()) ? false : true);
    }

    public final String v() {
        return C1920v3.a(this.f8572d, "required_data_processing", null, null, null, 14, null);
    }

    public final Spanned w() {
        Map<String, String> mapI = G().i();
        if (mapI != null) {
            return V5.i(C1920v3.a(this.f8572d, mapI, null, 2, null));
        }
        return null;
    }

    public final CharSequence w(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        if (!z(vendor)) {
            return V5.g(vendor.getName());
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str = String.format("%s \t\t %s", Arrays.copyOf(new Object[]{V5.g(vendor.getName()), "IAB TCF"}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        SpannableString spannableString = new SpannableString(str);
        int length = spannableString.length() - 7;
        spannableString.setSpan(new ForegroundColorSpan(this.f8573e.r()), length, spannableString.length(), 18);
        spannableString.setSpan(new StyleSpan(1), length, spannableString.length(), 18);
        return spannableString;
    }

    public final Spanned x() {
        Map<String, String> mapK = G().k();
        if (mapK != null) {
            return V5.k(C1920v3.a(this.f8572d, mapK, null, 2, null));
        }
        return null;
    }

    public final String x(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return C1920v3.a(this.f8572d, "vendor_privacy_policy_button_title", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{vendorName}", vendor.getName())), null, 10, null);
    }

    public final DidomiToggle.b y(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return K(vendor) ? DidomiToggle.b.ENABLED : J(vendor) ? DidomiToggle.b.DISABLED : DidomiToggle.b.UNKNOWN;
    }

    public final String y() {
        return C1920v3.a(this.f8572d, "select_partners", null, null, null, 14, null);
    }

    public final String z() {
        return C1920v3.a(this.f8572d, "link_iab_tcf_website", null, null, null, 14, null);
    }

    public final boolean z(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return b0() && vendor.isIabVendor();
    }
}
