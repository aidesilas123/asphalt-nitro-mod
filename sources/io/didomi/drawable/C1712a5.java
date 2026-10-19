package io.didomi.drawable;

import android.os.Build;
import android.text.SpannableString;
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
import io.didomi.drawable.InterfaceC1931w4;
import io.didomi.drawable.PurposeDisplayAdditionalDataProcessing;
import io.didomi.drawable.events.Event;
import io.didomi.drawable.events.PreferencesClickAgreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickAgreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickCategoryAgreeEvent;
import io.didomi.drawable.events.PreferencesClickCategoryDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickPurposeAgreeEvent;
import io.didomi.drawable.events.PreferencesClickPurposeDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickResetAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickSaveChoicesEvent;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.UserStatus;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.didomi.sdk.a5, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u0084\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010#\n\u0002\b/\n\u0002\u0018\u0002\n\u0002\b;\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b@\b\u0017\u0018\u00002\u00020\u0001Bi\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010 \u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002¢\u0006\u0004\b \u0010!J\u001d\u0010#\u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\"0\u001cH\u0002¢\u0006\u0004\b#\u0010!J\u001f\u0010 \u001a\u00020'2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u001fH\u0002¢\u0006\u0004\b \u0010(J\u000f\u0010)\u001a\u00020\u001fH\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010 \u001a\u00020-2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b \u0010.J\u0017\u0010 \u001a\u00020'2\u0006\u0010&\u001a\u00020\u001fH\u0002¢\u0006\u0004\b \u0010/J\u000f\u0010#\u001a\u000200H\u0002¢\u0006\u0004\b#\u00101J\u0017\u0010 \u001a\u0002042\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b \u00105J\u000f\u00107\u001a\u000206H\u0002¢\u0006\u0004\b7\u00108J\u0017\u0010;\u001a\u0002062\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b;\u0010<J\u0017\u0010 \u001a\u0002062\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b \u0010<J\u000f\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b \u0010*J\u000f\u0010=\u001a\u000206H\u0002¢\u0006\u0004\b=\u00108J\u0017\u0010#\u001a\u00020\u001f2\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b#\u0010>J\u000f\u0010?\u001a\u000206H\u0002¢\u0006\u0004\b?\u00108J\u000f\u0010@\u001a\u000206H\u0002¢\u0006\u0004\b@\u00108J\u001f\u0010 \u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010B\u001a\u00020$H\u0002¢\u0006\u0004\b \u0010CJ\u001f\u0010E\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010D\u001a\u00020$H\u0002¢\u0006\u0004\bE\u0010CJ\u000f\u0010F\u001a\u000206H\u0002¢\u0006\u0004\bF\u00108J\u000f\u0010G\u001a\u000206H\u0002¢\u0006\u0004\bG\u00108J\u000f\u0010H\u001a\u000206H\u0002¢\u0006\u0004\bH\u00108J\u000f\u0010I\u001a\u000206H\u0002¢\u0006\u0004\bI\u00108J\u0017\u0010J\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020\u001dH\u0002¢\u0006\u0004\bJ\u0010KJ\u0017\u0010L\u001a\u00020$2\u0006\u0010A\u001a\u00020\u001dH\u0002¢\u0006\u0004\bL\u0010MJ\u0017\u00107\u001a\u00020$2\u0006\u0010A\u001a\u00020\u001dH\u0002¢\u0006\u0004\b7\u0010MJ\u0017\u0010#\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0002¢\u0006\u0004\b#\u0010NJ\u0017\u0010O\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0002¢\u0006\u0004\bO\u0010NJ\u0017\u0010P\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0002¢\u0006\u0004\bP\u0010NJ\u0017\u0010E\u001a\u0002062\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\bE\u0010QJ\u001d\u0010G\u001a\b\u0012\u0004\u0012\u0002040T2\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0004\bG\u0010UJ\u001b\u0010V\u001a\u0004\u0018\u00010\"2\b\u0010A\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0004\bV\u0010WJ\u001b\u0010V\u001a\u0004\u0018\u00010\"2\b\u0010S\u001a\u0004\u0018\u00010RH\u0002¢\u0006\u0004\bV\u0010XJ\u001f\u0010 \u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0004\b \u0010YJ\u0017\u0010;\u001a\u0002062\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0004\b;\u0010ZJ\u001d\u0010E\u001a\u00020\u001f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0004¢\u0006\u0004\bE\u0010!J\u0015\u0010[\u001a\u00020\u001f2\u0006\u0010S\u001a\u00020R¢\u0006\u0004\b[\u0010\\J\r\u0010]\u001a\u000206¢\u0006\u0004\b]\u00108J\r\u0010^\u001a\u00020\u001f¢\u0006\u0004\b^\u0010*J\r\u0010_\u001a\u00020\u001f¢\u0006\u0004\b_\u0010*J\r\u0010`\u001a\u00020\u001f¢\u0006\u0004\b`\u0010*J\r\u0010a\u001a\u000204¢\u0006\u0004\ba\u0010bJ\u0013\u0010c\u001a\b\u0012\u0004\u0012\u00020+0\u001c¢\u0006\u0004\bc\u0010dJ\u001b\u0010#\u001a\b\u0012\u0004\u0012\u00020f0e2\u0006\u0010S\u001a\u00020R¢\u0006\u0004\b#\u0010gJ#\u0010 \u001a\b\u0012\u0004\u0012\u00020f0\u001c2\u0006\u0010S\u001a\u00020R2\u0006\u0010&\u001a\u00020\u001f¢\u0006\u0004\b \u0010hJ\u0013\u0010i\u001a\b\u0012\u0004\u0012\u00020f0e¢\u0006\u0004\bi\u0010dJ\u001b\u0010E\u001a\b\u0012\u0004\u0012\u00020f0\u001c2\u0006\u0010&\u001a\u00020\u001f¢\u0006\u0004\bE\u0010jJ\u0013\u0010E\u001a\b\u0012\u0004\u0012\u00020\"0e¢\u0006\u0004\bE\u0010dJ\u0015\u0010k\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016¢\u0006\u0004\bk\u0010dJ\u0013\u0010l\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c¢\u0006\u0004\bl\u0010dJ\u0015\u0010 \u001a\u0002062\u0006\u0010n\u001a\u00020m¢\u0006\u0004\b \u0010oJ\u0017\u0010;\u001a\u0004\u0018\u00010\u001d2\u0006\u0010p\u001a\u000204¢\u0006\u0004\b;\u0010qJ\u0017\u0010 \u001a\u0004\u0018\u00010R2\u0006\u0010p\u001a\u000204¢\u0006\u0004\b \u0010rJ\u0013\u0010s\u001a\b\u0012\u0004\u0012\u00020\u001d0T¢\u0006\u0004\bs\u0010tJ\u0013\u0010u\u001a\b\u0012\u0004\u0012\u00020\u001d0T¢\u0006\u0004\bu\u0010tJ\u0013\u0010w\u001a\b\u0012\u0004\u0012\u00020\u001d0v¢\u0006\u0004\bw\u0010tJ\u0013\u0010x\u001a\b\u0012\u0004\u0012\u00020\u001d0v¢\u0006\u0004\bx\u0010tJ\u0013\u0010y\u001a\b\u0012\u0004\u0012\u00020\u001d0v¢\u0006\u0004\by\u0010tJ\u0013\u0010z\u001a\b\u0012\u0004\u0012\u00020\u001d0v¢\u0006\u0004\bz\u0010tJ\u0013\u0010{\u001a\b\u0012\u0004\u0012\u0002090v¢\u0006\u0004\b{\u0010tJ\u0013\u0010|\u001a\b\u0012\u0004\u0012\u0002090v¢\u0006\u0004\b|\u0010tJ\u0013\u0010}\u001a\b\u0012\u0004\u0012\u0002090v¢\u0006\u0004\b}\u0010tJ\u0013\u0010~\u001a\b\u0012\u0004\u0012\u0002090v¢\u0006\u0004\b~\u0010tJ\u0016\u0010\u007f\u001a\u0002042\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u0016\u0010G\u001a\u0002042\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\bG\u0010\u0080\u0001J\u000f\u0010\u0081\u0001\u001a\u00020\u001f¢\u0006\u0005\b\u0081\u0001\u0010*J\u000f\u0010\u0082\u0001\u001a\u00020\u001f¢\u0006\u0005\b\u0082\u0001\u0010*J\u0016\u0010i\u001a\u0002042\u0006\u0010S\u001a\u00020R¢\u0006\u0005\bi\u0010\u0083\u0001J\u0018\u0010E\u001a\u0002042\u0006\u0010S\u001a\u00020RH\u0004¢\u0006\u0005\bE\u0010\u0083\u0001J\u000f\u0010\u0084\u0001\u001a\u00020\u001f¢\u0006\u0005\b\u0084\u0001\u0010*J\u0018\u0010[\u001a\u0004\u0018\u0001042\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\b[\u0010\u0080\u0001J\u0018\u0010F\u001a\u0004\u0018\u0001042\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\bF\u0010\u0080\u0001J\r\u0010J\u001a\u00020\u001f¢\u0006\u0004\bJ\u0010*J\u000f\u0010\u0085\u0001\u001a\u00020\u001f¢\u0006\u0005\b\u0085\u0001\u0010*J\u0017\u0010 \u001a\u00020\u001f2\b\u0010S\u001a\u0004\u0018\u00010R¢\u0006\u0004\b \u0010\\J\u0016\u0010\u007f\u001a\u00020\u001f2\u0007\u0010\u0086\u0001\u001a\u00020R¢\u0006\u0004\b\u007f\u0010\\J\u000f\u0010\u0087\u0001\u001a\u00020\u001f¢\u0006\u0005\b\u0087\u0001\u0010*J\u0015\u0010i\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0004\bi\u0010NJ\u0015\u0010;\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0004\b;\u0010NJ\u0017\u0010\u0088\u0001\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\b\u0088\u0001\u0010NJ\u0015\u0010E\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0004\bE\u0010NJ\u0015\u0010 \u001a\u0002062\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0004\b \u0010NJ\u0019\u0010\u0089\u0001\u001a\u00020\u001f2\b\u0010A\u001a\u0004\u0018\u00010\u001d¢\u0006\u0005\b\u0089\u0001\u0010KJ\u000f\u0010\u008a\u0001\u001a\u000206¢\u0006\u0005\b\u008a\u0001\u00108J\u0017\u0010#\u001a\u00020\u001f2\u0007\u0010\u008b\u0001\u001a\u00020\u001f¢\u0006\u0005\b#\u0010\u008c\u0001J\u000f\u0010\u008d\u0001\u001a\u00020\u001f¢\u0006\u0005\b\u008d\u0001\u0010*J\r\u0010;\u001a\u00020\u001f¢\u0006\u0004\b;\u0010*J\u0011\u0010\u008e\u0001\u001a\u000206H\u0010¢\u0006\u0005\b\u008e\u0001\u00108J\u000f\u0010\u008f\u0001\u001a\u000206¢\u0006\u0005\b\u008f\u0001\u00108J\u0018\u0010\u0091\u0001\u001a\u0002062\u0007\u0010\u0090\u0001\u001a\u00020\u001d¢\u0006\u0005\b\u0091\u0001\u0010NJ\u0016\u0010;\u001a\u0002062\u0007\u0010\u0092\u0001\u001a\u00020$¢\u0006\u0004\b;\u0010QJ\u0018\u0010\u0093\u0001\u001a\u0002062\u0007\u0010\u0090\u0001\u001a\u00020R¢\u0006\u0005\b\u0093\u0001\u0010ZJ\u0016\u0010P\u001a\u00020$2\u0006\u0010S\u001a\u00020R¢\u0006\u0005\bP\u0010\u0094\u0001J\u0017\u0010\u0093\u0001\u001a\u00020$2\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\b\u0093\u0001\u0010MJ\u0018\u0010#\u001a\u0002062\t\u0010\u0095\u0001\u001a\u0004\u0018\u00010$¢\u0006\u0004\b#\u0010QJ\u0016\u0010I\u001a\u0002062\u0007\u0010\u0096\u0001\u001a\u00020\u001d¢\u0006\u0004\bI\u0010NJ\u0016\u00107\u001a\u0002062\u0007\u0010\u0097\u0001\u001a\u00020R¢\u0006\u0004\b7\u0010ZJ\u0017\u0010\u0098\u0001\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\b\u0098\u0001\u0010KJ\u0017\u0010\u0099\u0001\u001a\u00020\u001f2\u0006\u0010A\u001a\u00020\u001d¢\u0006\u0005\b\u0099\u0001\u0010KJ\u000f\u0010\u009a\u0001\u001a\u000206¢\u0006\u0005\b\u009a\u0001\u00108J\u000f\u0010\u009b\u0001\u001a\u000206¢\u0006\u0005\b\u009b\u0001\u00108J\u000f\u0010\u009c\u0001\u001a\u000206¢\u0006\u0005\b\u009c\u0001\u00108J\u000f\u0010\u009d\u0001\u001a\u000206¢\u0006\u0005\b\u009d\u0001\u00108J\u000f\u0010\u009e\u0001\u001a\u000206¢\u0006\u0005\b\u009e\u0001\u00108J\u001d\u0010i\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\bi\u0010CJ\u001d\u0010;\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b;\u0010CJ\u001d\u0010#\u001a\u0002062\u0006\u0010A\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b#\u0010CJ\u001e\u0010 \u001a\u0002062\u0006\u0010S\u001a\u00020R2\u0006\u0010%\u001a\u00020$¢\u0006\u0005\b \u0010\u009f\u0001J\u0015\u0010 \u001a\u0002062\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b \u0010QJ\u000f\u0010 \u0001\u001a\u000206¢\u0006\u0005\b \u0001\u00108J\u000f\u0010¡\u0001\u001a\u000206¢\u0006\u0005\b¡\u0001\u00108J\u000f\u0010¢\u0001\u001a\u000206¢\u0006\u0005\b¢\u0001\u00108J\u000f\u0010£\u0001\u001a\u000206¢\u0006\u0005\b£\u0001\u00108J\u000f\u0010¤\u0001\u001a\u00020\u001f¢\u0006\u0005\b¤\u0001\u0010*J\u000f\u0010¥\u0001\u001a\u00020\u001f¢\u0006\u0005\b¥\u0001\u0010*J\u0011\u0010§\u0001\u001a\u00030¦\u0001¢\u0006\u0006\b§\u0001\u0010¨\u0001J\u0011\u0010©\u0001\u001a\u00030¦\u0001¢\u0006\u0006\b©\u0001\u0010¨\u0001J\u0011\u0010ª\u0001\u001a\u000206H\u0000¢\u0006\u0005\bª\u0001\u00108J\u000f\u0010[\u001a\u000206H\u0000¢\u0006\u0004\b[\u00108J\u000f\u0010L\u001a\u000206H\u0000¢\u0006\u0004\bL\u00108J\u000f\u0010\u007f\u001a\u000206H\u0000¢\u0006\u0004\b\u007f\u00108J\u0011\u0010\u0093\u0001\u001a\u000206H\u0000¢\u0006\u0005\b\u0093\u0001\u00108J\u000f\u0010P\u001a\u000206H\u0000¢\u0006\u0004\bP\u00108J\u000f\u0010V\u001a\u000206H\u0000¢\u0006\u0004\bV\u00108J-\u0010 \u001a\u0002062\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0e2\r\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020R0\u001cH\u0014¢\u0006\u0005\b \u0010¬\u0001J\u0019\u0010\u00ad\u0001\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0004¢\u0006\u0005\b\u00ad\u0001\u0010NJ\u0019\u0010®\u0001\u001a\u0002062\u0006\u0010A\u001a\u00020\u001dH\u0004¢\u0006\u0005\b®\u0001\u0010NJ\u0011\u0010¯\u0001\u001a\u000206H\u0004¢\u0006\u0005\b¯\u0001\u00108J\u000f\u0010°\u0001\u001a\u000206¢\u0006\u0005\b°\u0001\u00108J\u001b\u0010L\u001a\u0004\u0018\u00010\u001d2\u0007\u0010\u0086\u0001\u001a\u00020RH\u0004¢\u0006\u0005\bL\u0010±\u0001R\u0015\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b \u0010²\u0001R\u001d\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004¢\u0006\u000f\n\u0005\b;\u0010³\u0001\u001a\u0006\b´\u0001\u0010µ\u0001R\u0015\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b#\u0010¶\u0001R\u0015\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bE\u0010·\u0001R\u0015\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bi\u0010¸\u0001R\u001d\u0010\r\u001a\u00020\f8\u0004X\u0084\u0004¢\u0006\u000f\n\u0005\bP\u0010¹\u0001\u001a\u0006\bº\u0001\u0010»\u0001R\u001d\u0010\u000f\u001a\u00020\u000e8\u0004X\u0084\u0004¢\u0006\u000f\n\u0005\bV\u0010¼\u0001\u001a\u0006\b½\u0001\u0010¾\u0001R\u0015\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bL\u0010¿\u0001R\u001a\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\u000f\n\u0005\bG\u0010À\u0001\u001a\u0006\bÁ\u0001\u0010Â\u0001R\u001a\u0010\u0015\u001a\u00020\u00148\u0006¢\u0006\u000f\n\u0005\b7\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001R\u001a\u0010\u0017\u001a\u00020\u00168\u0006¢\u0006\u000f\n\u0005\b\u007f\u0010Æ\u0001\u001a\u0006\bÇ\u0001\u0010È\u0001R\u0016\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0093\u0001\u0010É\u0001R\u001e\u0010Ì\u0001\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b[\u0010Ê\u0001\u001a\u0005\bË\u0001\u0010*R\u001e\u0010Î\u0001\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bF\u0010Ê\u0001\u001a\u0005\bÍ\u0001\u0010*R\u001e\u0010Ð\u0001\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bI\u0010Ê\u0001\u001a\u0005\bÏ\u0001\u0010*R%\u0010Ó\u0001\u001a\u00020\u001f8DX\u0084\u0084\u0002¢\u0006\u0015\n\u0005\bJ\u0010Ê\u0001\u0012\u0005\bÒ\u0001\u00108\u001a\u0005\bÑ\u0001\u0010*R\u001f\u0010Õ\u0001\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\b\u0089\u0001\u0010Ê\u0001\u001a\u0005\bÔ\u0001\u0010*R-\u0010Ù\u0001\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0004@\u0004X\u0084\u000e¢\u0006\u0016\n\u0006\b\u00ad\u0001\u0010Ö\u0001\u001a\u0005\b×\u0001\u0010d\"\u0005\b;\u0010Ø\u0001R\u001f\u0010Ú\u0001\u001a\b\u0012\u0004\u0012\u00020R0\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010Ö\u0001R#\u0010Ý\u0001\u001a\b\u0012\u0004\u0012\u00020\u001d0T8\u0004X\u0084\u0004¢\u0006\u000e\n\u0005\bO\u0010Û\u0001\u001a\u0005\bÜ\u0001\u0010tR$\u0010ß\u0001\u001a\b\u0012\u0004\u0012\u00020\u001d0T8\u0004X\u0084\u0004¢\u0006\u000f\n\u0006\b\u0091\u0001\u0010Û\u0001\u001a\u0005\bÞ\u0001\u0010tR$\u0010á\u0001\u001a\b\u0012\u0004\u0012\u0002090T8\u0000X\u0080\u0004¢\u0006\u000f\n\u0006\b\u0099\u0001\u0010Û\u0001\u001a\u0005\bà\u0001\u0010tR%\u0010\u0096\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001d0â\u00018\u0006¢\u0006\u0010\n\u0006\b\u0098\u0001\u0010ã\u0001\u001a\u0006\bä\u0001\u0010å\u0001R%\u0010\u0097\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010R0â\u00018\u0006¢\u0006\u0010\n\u0006\b\u0088\u0001\u0010ã\u0001\u001a\u0006\bæ\u0001\u0010å\u0001R\u001f\u0010é\u0001\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\bç\u0001\u0010Ê\u0001\u001a\u0005\bè\u0001\u0010*R\u001f\u0010ì\u0001\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\bê\u0001\u0010Ê\u0001\u001a\u0005\bë\u0001\u0010*R'\u0010ð\u0001\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\bí\u0001\u0010Ô\u0001\u001a\u0005\bî\u0001\u0010*\"\u0005\b;\u0010ï\u0001R\u0019\u0010ò\u0001\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0001\u0010Ô\u0001R$\u0010ô\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010$0â\u00018\u0006¢\u0006\u000f\n\u0005\ba\u0010ã\u0001\u001a\u0006\bó\u0001\u0010å\u0001R%\u0010\u0095\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010$0â\u00018\u0006¢\u0006\u0010\n\u0006\bõ\u0001\u0010ã\u0001\u001a\u0006\bö\u0001\u0010å\u0001R%\u0010ù\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010$0â\u00018\u0006¢\u0006\u0010\n\u0006\b÷\u0001\u0010ã\u0001\u001a\u0006\bø\u0001\u0010å\u0001R\u001c\u0010ý\u0001\u001a\u0005\u0018\u00010ú\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bû\u0001\u0010ü\u0001R$\u0010«\u0001\u001a\b\u0012\u0004\u0012\u00020R0\u001c8\u0004X\u0084\u0004¢\u0006\u000f\n\u0006\bþ\u0001\u0010Ö\u0001\u001a\u0005\bþ\u0001\u0010dR\u001d\u0010\u0080\u0002\u001a\b\u0012\u0004\u0012\u0002040\u001c8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÿ\u0001\u0010Ö\u0001R#\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0004X\u0084\u0004¢\u0006\u000f\n\u0006\b´\u0001\u0010Ö\u0001\u001a\u0005\b\u0081\u0002\u0010dR\u001f\u0010\u0083\u0002\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\bÜ\u0001\u0010Ê\u0001\u001a\u0005\b\u0082\u0002\u0010*R\u001f\u0010\u0086\u0002\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\b\u0084\u0002\u0010Ê\u0001\u001a\u0005\b\u0085\u0002\u0010*R\u001f\u0010\u0088\u0002\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\u000f\n\u0006\bë\u0001\u0010Ê\u0001\u001a\u0005\b\u0087\u0002\u0010*R \u0010\u008c\u0002\u001a\u00030\u0089\u00028BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bz\u0010Ê\u0001\u001a\u0006\b\u008a\u0002\u0010\u008b\u0002R.\u0010\u0090\u0002\u001a\u0011\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u000204\u0018\u00010\u008d\u00028BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\bx\u0010Ê\u0001\u001a\u0006\b\u008e\u0002\u0010\u008f\u0002R\u001e\u0010\u0092\u0002\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bu\u0010Ê\u0001\u001a\u0005\b\u0091\u0002\u0010*R \u0010\u0096\u0002\u001a\u00030\u0093\u00028BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b|\u0010Ê\u0001\u001a\u0006\b\u0094\u0002\u0010\u0095\u0002R\u001d\u0010\u0098\u0002\u001a\u00020\u001f8\u0000X\u0080\u0004¢\u0006\u000e\n\u0005\b~\u0010Ô\u0001\u001a\u0005\b\u0097\u0002\u0010*R$\u0010\u009a\u0002\u001a\u000f\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u0002040\u008d\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0099\u0002\u0010\u008f\u0002R\u0016\u0010\u009b\u0002\u001a\u0002048BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0098\u0001\u0010bR\u001c\u0010\u009c\u0002\u001a\b\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bñ\u0001\u0010dR\u001c\u0010\u009d\u0002\u001a\b\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bê\u0001\u0010dR\u001c\u0010\u009e\u0002\u001a\b\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bí\u0001\u0010dR\u001b\u0010\u009f\u0002\u001a\b\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bO\u0010dR\u001c\u0010 \u0002\u001a\b\u0012\u0004\u0012\u0002040\u001c8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0099\u0001\u0010dR\u0016\u0010¡\u0002\u001a\u0002048BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b÷\u0001\u0010bR\u0016\u0010£\u0002\u001a\u0002048BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b¢\u0002\u0010bR\u001c\u0010¥\u0002\u001a\b\u0012\u0004\u0012\u0002090T8DX\u0084\u0004¢\u0006\u0007\u001a\u0005\b¤\u0002\u0010tR\u0013\u0010§\u0002\u001a\u00020\u001f8F¢\u0006\u0007\u001a\u0005\b¦\u0002\u0010*R\u0013\u0010©\u0002\u001a\u00020\u001f8F¢\u0006\u0007\u001a\u0005\b¨\u0002\u0010*R\u0013\u0010ª\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bõ\u0001\u0010bR\u0013\u0010«\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010bR\u0013\u0010¬\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b\u0084\u0002\u0010bR\u0013\u0010®\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b\u00ad\u0002\u0010bR\u0013\u0010°\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b¯\u0002\u0010bR\u0016\u0010²\u0002\u001a\u0002048VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b±\u0002\u0010bR\u0013\u0010´\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b³\u0002\u0010bR\u0013\u0010¶\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bµ\u0002\u0010bR\u0019\u0010¸\u0002\u001a\b\u0012\u0004\u0012\u0002040\u001c8F¢\u0006\u0007\u001a\u0005\b·\u0002\u0010dR\u0016\u0010º\u0002\u001a\u0002048VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b¹\u0002\u0010bR\u0013\u0010¼\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b»\u0002\u0010bR\u0013\u0010¾\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b½\u0002\u0010bR\u0013\u0010À\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b¿\u0002\u0010bR\u0013\u0010Á\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b\u0088\u0001\u0010bR\u0013\u0010Â\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b\u00ad\u0001\u0010bR\u0015\u0010Ã\u0002\u001a\u00030¦\u00018F¢\u0006\b\u001a\u0006\bÿ\u0001\u0010¨\u0001R\u0013\u0010Ä\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b®\u0001\u0010bR\u0013\u0010Å\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bç\u0001\u0010bR\u0013\u0010Ç\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÆ\u0002\u0010bR\u0013\u0010É\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÈ\u0002\u0010bR\u0013\u0010Ê\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b\u0091\u0001\u0010bR\u0013\u0010Ì\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bË\u0002\u0010bR\u0013\u0010Î\u0002\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÍ\u0002\u0010bR\u0014\u0010Ð\u0002\u001a\u00020$8F¢\u0006\b\u001a\u0006\bû\u0001\u0010Ï\u0002R\u0013\u0010Ò\u0002\u001a\u00020\u001f8F¢\u0006\u0007\u001a\u0005\bÑ\u0002\u0010*¨\u0006Ó\u0002"}, d2 = {"Lio/didomi/sdk/a5;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lio/didomi/sdk/D8;", "uiProvider", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/I3;", "navigationManager", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V", "", "Lio/didomi/sdk/models/InternalPurpose;", Didomi.VIEW_PURPOSES, "", "a", "(Ljava/util/List;)Z", "Lio/didomi/sdk/E4;", "c", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "accessibilityAnnounceState", "Lio/didomi/sdk/y4;", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)Lio/didomi/sdk/y4;", "r1", "()Z", "Lio/didomi/sdk/o0;", "dataProcessing", "Lio/didomi/sdk/x4$a;", "(Lio/didomi/sdk/o0;)Lio/didomi/sdk/x4$a;", "(Z)Lio/didomi/sdk/y4;", "Lio/didomi/sdk/D4;", "()Lio/didomi/sdk/D4;", "", "count", "", "(I)Ljava/lang/String;", "", "j", "()V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/models/InternalVendor;)V", "y1", "(Lio/didomi/sdk/models/InternalVendor;)Z", "o1", "p1", "purpose", "consentStatus", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "legIntState", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, b4.p, "i", "W0", "o", TtmlNode.TAG_P, "(Lio/didomi/sdk/models/InternalPurpose;)Z", "h", "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "(Lio/didomi/sdk/models/InternalPurpose;)V", "t", InneractiveMediationDefs.GENDER_FEMALE, "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/Set;", "g", "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/E4;", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/E4;", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", InneractiveMediationDefs.GENDER_MALE, "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z", "x1", "s1", "u1", "v1", "C", "()Ljava/lang/String;", "D0", "()Ljava/util/List;", "", "Lio/didomi/sdk/w4;", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/util/List;", "e", "(Z)Ljava/util/List;", "P0", "j1", "Lio/didomi/sdk/events/Event;", NotificationCompat.CATEGORY_EVENT, "(Lio/didomi/sdk/events/Event;)V", "id", "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;", "(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "V", "()Ljava/util/Set;", "O", "", "U", "N", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "M", "W", "P", "X", "Q", CampaignEx.JSON_KEY_AD_K, "(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;", "m1", "n1", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;", "t1", "X0", "purposeCategory", "w1", "x", CampaignEx.JSON_KEY_AD_Q, "V0", "isMainScreen", "(Z)Z", "q1", "z1", "k1", "item", "u", "value", "l", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "selectedPurposeLegIntState", "selectedPurpose", "selectedCategory", "w", "v", "Y0", "b1", "h1", "c1", "i1", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "a1", "e1", "Z0", "d1", "S0", "R0", "Lio/didomi/sdk/a;", "v0", "()Lio/didomi/sdk/a;", "x0", "l1", "categories", "(Ljava/util/List;Ljava/util/List;)V", "r", "s", "f1", "g1", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;", "Lio/didomi/sdk/apiEvents/b;", "Lio/didomi/sdk/H;", "I", "()Lio/didomi/sdk/H;", "Lio/didomi/sdk/V;", "Lio/didomi/sdk/Z;", "Lio/didomi/sdk/M2;", "Lio/didomi/sdk/v3;", "d0", "()Lio/didomi/sdk/v3;", "Lio/didomi/sdk/G8;", "M0", "()Lio/didomi/sdk/G8;", "Lio/didomi/sdk/P8;", "Lio/didomi/sdk/D8;", "G0", "()Lio/didomi/sdk/D8;", "Lio/didomi/sdk/V8;", "N0", "()Lio/didomi/sdk/V8;", "Lio/didomi/sdk/C3;", "f0", "()Lio/didomi/sdk/C3;", "Lio/didomi/sdk/I3;", "Lkotlin/Lazy;", "H0", "useCcpa", "I0", "useGdpr", "J0", "useMixedRegulation", "U0", "isTcf2_2$annotations", "isTcf2_2", "Z", "excludeBulkConsentButtons", "Ljava/util/List;", "getRequiredPurposes", "(Ljava/util/List;)V", "requiredPurposes", "requiredCategories", "Ljava/util/Set;", "J", "consentPurposes", "m0", "requiredPurposesLegInt", "getRequiredVendorsLegInt$android_release", "requiredVendorsLegInt", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/MutableLiveData;", "u0", "()Landroidx/lifecycle/MutableLiveData;", "s0", "y", "K0", "usePurposeTitleInPurposeCategory", "z", "L", "disableButtonsUntilScroll", "A", "getHasScrolledToTheBottom", "(Z)V", "hasScrolledToTheBottom", "B", "shouldAddRoomForIcon", "w0", "selectedPurposeConsentState", "D", "y0", "E", "t0", "selectedCategoryState", "Lio/didomi/sdk/m3;", "F", "Lio/didomi/sdk/m3;", "initialPurposesHolder", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "H", "purposeIdsInCategories", "j0", "getCanCloseWhenConsentIsMissing", "canCloseWhenConsentIsMissing", "K", "C0", "showWhenConsentIsMissing", "A0", "shouldBeCancelable", "Lio/didomi/sdk/k$g$a;", "h0", "()Lio/didomi/sdk/k$g$a;", "preferencesContent", "", "F0", "()Ljava/util/Map;", "translatableSaveTitle", "L0", "useSaveAndCloseFromConfig", "Lio/didomi/sdk/X4;", "l0", "()Lio/didomi/sdk/X4;", "regulationResources", "a0", "hasNonEssentialPurposes", "g0", "nameMacroForSelectedPurpose", "accessibilityPurposeActionDescription", "accessibilityStateDescription", "accessibilityStateActionDescription", "accessibilityStateBulkActionDescription", "accessibilityConsentStateActionDescription", "accessibilityLIStateActionDescription", "allPurposesText", "z0", "sensitivePersonalInfoButtonLabel", "n0", "requiredVendorsConsent", "B0", "shouldConsentBeCollected", "T0", "isSpecialFeature", "agreeButtonLabel", "accessibilityAgreeButtonActionDescription", "consentToggleText", "S", "disagreeButtonLabel", "R", "disagreeButtonAccessibilityActionDescription", "Y", "essentialPurposeText", "e0", "legitimateInterestToggleText", "i0", "purposeDescriptionLegal", "b0", "illustrations", "c0", "illustrationsHeaderLabel", "k0", "purposesMessageRawText", "r0", "scrollIndicatorText", "o0", "saveAndCloseButtonTitle", "accessibilitySaveButtonActionDescription", "accessibilityCloseDescription", "closeDetailsButtonAccessibility", "accessibilityClosePurposesActionDescription", "accessibilitySavePurposeDetailActionDescription", "q0", "saveButtonLabel", "E0", "title", "accessibilityHintForPurposes", "O0", "vendorsButtonLabel", "p0", "saveButtonDescriptionText", "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "bulkActionState", "Q0", "isSaveButtonEnabled", "android_release"}, mv = {1, 8, 0})
public class C1712a5 extends ViewModel {
    private boolean A;
    private boolean B;
    private final MutableLiveData<DidomiToggle.b> C;
    private final MutableLiveData<DidomiToggle.b> D;
    private final MutableLiveData<DidomiToggle.b> E;
    private InitialPurposesHolder F;
    private final List<PurposeCategory> G;
    private final List<String> H;
    private final List<InternalPurpose> I;
    private final Lazy J;
    private final Lazy K;
    private final Lazy L;
    private final Lazy M;
    private final Lazy N;
    private final Lazy O;
    private final Lazy P;
    private final boolean Q;
    private final io.didomi.drawable.apiEvents.b a;
    private final H b;
    private final V c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Z f8485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final M2 f8486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final C1920v3 f8487f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final G8 f8488g;
    private final P8 h;
    private final D8 i;
    private final V8 j;
    private final C3 k;
    private final I3 l;
    private final Lazy m;
    private final Lazy n;
    private final Lazy o;
    private final Lazy p;
    private final Lazy q;
    private List<InternalPurpose> r;
    private List<PurposeCategory> s;
    private final Set<InternalPurpose> t;
    private final Set<InternalPurpose> u;
    private final Set<InternalVendor> v;
    private final MutableLiveData<InternalPurpose> w;
    private final MutableLiveData<PurposeCategory> x;
    private final Lazy y;
    private final Lazy z;

    /* JADX INFO: renamed from: io.didomi.sdk.a5$a */
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
                iArr[DidomiToggle.b.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DidomiToggle.b.ENABLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$b */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Boolean> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1712a5.this.I().b().f().a());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$c */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Boolean> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1712a5.this.I().b().f().d());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$d */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Boolean> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(!C1712a5.this.I0());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$e */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, mv = {1, 8, 0}, xi = 48)
    public static final class e<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((InterfaceC1847o0) t).getName(), ((InterfaceC1847o0) t2).getName());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$f */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Boolean> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(Intrinsics.areEqual(C1816l.d(C1712a5.this.I().b()), "2.2"));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$g */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$g$a;", "a", "()Lio/didomi/sdk/k$g$a;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<C1806k.g.a> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.g.a invoke() {
            return C1712a5.this.I().b().f().b();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$h */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "it", "", "a", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function1<PurposeCategory, Boolean> {
        public static final h a = new h();

        h() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(PurposeCategory it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(C1901t4.a(it) == PurposeCategory.Type.Purpose);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$i */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "it", "Lio/didomi/sdk/models/InternalPurpose;", "a", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function1<PurposeCategory, InternalPurpose> {
        i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InternalPurpose invoke(PurposeCategory it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return C1712a5.this.b(it.getPurposeId());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$j */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/models/InternalPurpose;", "it", "", "a", "(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class j extends Lambda implements Function1<InternalPurpose, Boolean> {
        j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(InternalPurpose it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(C1712a5.this.H.contains(it.getId()));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$k */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/X4;", "a", "()Lio/didomi/sdk/X4;"}, mv = {1, 8, 0})
    static final class k extends Lambda implements Function0<X4> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final X4 invoke() {
            return C1712a5.this.H0() ? C1906u.a : C1712a5.this.J0() ? D3.a : P2.a;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$l */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class l extends Lambda implements Function0<Boolean> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            C1806k.g gVarF = C1712a5.this.I().b().f();
            return Boolean.valueOf(gVarF.g() && !gVarF.a());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$m */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class m extends Lambda implements Function0<Boolean> {
        m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1712a5.this.I().b().f().g());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$n */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class n extends Lambda implements Function0<Map<String, ? extends String>> {
        n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, String> invoke() {
            return C1712a5.this.L0() ? C1712a5.this.h0().h() : C1712a5.this.h0().g();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$o */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class o extends Lambda implements Function0<Boolean> {
        o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(I.i(C1712a5.this.I()));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$p */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class p extends Lambda implements Function0<Boolean> {
        p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(I.k(C1712a5.this.I()));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$q */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class q extends Lambda implements Function0<Boolean> {
        q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(I.l(C1712a5.this.I()));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$r */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class r extends Lambda implements Function0<Boolean> {
        r() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(I.m(C1712a5.this.I()));
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.a5$s */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class s extends Lambda implements Function0<Boolean> {
        s() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            Map<String, String> mapH = C1712a5.this.h0().h();
            return Boolean.valueOf((mapH == null || mapH.isEmpty() || C1712a5.this.I0()) ? false : true);
        }
    }

    public C1712a5(io.didomi.drawable.apiEvents.b apiEventsRepository, H configurationRepository, V consentRepository, Z contextHelper, M2 eventsRepository, C1920v3 languagesHelper, G8 userChoicesInfoProvider, P8 userStatusRepository, D8 uiProvider, V8 vendorRepository, C3 logoProvider, I3 navigationManager) {
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        Intrinsics.checkNotNullParameter(uiProvider, "uiProvider");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(navigationManager, "navigationManager");
        this.a = apiEventsRepository;
        this.b = configurationRepository;
        this.c = consentRepository;
        this.f8485d = contextHelper;
        this.f8486e = eventsRepository;
        this.f8487f = languagesHelper;
        this.f8488g = userChoicesInfoProvider;
        this.h = userStatusRepository;
        this.i = uiProvider;
        this.j = vendorRepository;
        this.k = logoProvider;
        this.l = navigationManager;
        this.m = LazyKt__LazyJVMKt.lazy(new o());
        this.n = LazyKt__LazyJVMKt.lazy(new p());
        this.o = LazyKt__LazyJVMKt.lazy(new q());
        this.p = LazyKt__LazyJVMKt.lazy(new f());
        this.q = LazyKt__LazyJVMKt.lazy(new d());
        this.r = W8.c(vendorRepository);
        this.s = vendorRepository.e();
        Set<InternalPurpose> setL = vendorRepository.l();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setL) {
            if (!C1860p3.a((InternalPurpose) obj)) {
                arrayList.add(obj);
            }
        }
        this.t = CollectionsKt___CollectionsKt.toSet(arrayList);
        Set<InternalPurpose> setN = this.j.n();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : setN) {
            if (!C1860p3.a((InternalPurpose) obj2)) {
                arrayList2.add(obj2);
            }
        }
        this.u = CollectionsKt___CollectionsKt.toSet(arrayList2);
        this.v = this.j.t();
        this.w = new MutableLiveData<>();
        this.x = new MutableLiveData<>();
        this.y = LazyKt__LazyJVMKt.lazy(new r());
        this.z = LazyKt__LazyJVMKt.lazy(new c());
        this.C = new MutableLiveData<>();
        this.D = new MutableLiveData<>();
        this.E = new MutableLiveData<>();
        List<PurposeCategory> list = this.s;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : list) {
            if (C1901t4.a((PurposeCategory) obj3) == PurposeCategory.Type.Category && (!i(r5).isEmpty())) {
                arrayList3.add(obj3);
            }
        }
        this.G = arrayList3;
        ArrayList arrayList4 = new ArrayList();
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList4, i((PurposeCategory) it.next()));
        }
        this.H = CollectionsKt___CollectionsKt.distinct(arrayList4);
        this.I = SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.filterNot(SequencesKt___SequencesKt.distinct(SequencesKt___SequencesKt.plus(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(this.s), h.a), new i()), (Iterable) j1())), new j()));
        this.J = LazyKt__LazyJVMKt.lazy(new b());
        this.K = LazyKt__LazyJVMKt.lazy(new m());
        this.L = LazyKt__LazyJVMKt.lazy(new l());
        this.M = LazyKt__LazyJVMKt.lazy(new g());
        this.N = LazyKt__LazyJVMKt.lazy(new n());
        this.O = LazyKt__LazyJVMKt.lazy(new s());
        this.P = LazyKt__LazyJVMKt.lazy(new k());
        this.Q = a(this.r);
    }

    private final List<String> A() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8487f, "reset_all_data_processing", null, null, null, 14, null), C1920v3.a(this.f8487f, "disable_all_data_processing", null, null, null, 14, null), C1920v3.a(this.f8487f, "enable_all_data_processing", null, null, null, 14, null)});
    }

    private final List<String> B() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8487f, "disabled", null, null, null, 14, null), C1920v3.a(this.f8487f, b4.r, null, null, null, 14, null), C1920v3.a(this.f8487f, "unspecified", null, null, null, 14, null)});
    }

    private final String E() {
        return C1920v3.a(this.f8487f, I.g(this.b) ? "you_allow" : "bulk_action_on_purposes_mobile", null, null, null, 14, null);
    }

    private final Map<String, String> F0() {
        return (Map) this.N.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean H0() {
        return ((Boolean) this.m.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean I0() {
        return ((Boolean) this.n.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean J0() {
        return ((Boolean) this.o.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean L0() {
        return ((Boolean) this.O.getValue()).booleanValue();
    }

    private final void W0() {
        this.f8488g.g(new LinkedHashSet());
        this.f8488g.c(new LinkedHashSet());
    }

    private final PurposeDisplayAdditionalDataProcessing.DataProcessingItem a(InterfaceC1847o0 interfaceC1847o0) {
        SpannableString spannableString = new SpannableString(StringsKt__StringsKt.trim(interfaceC1847o0.getName()).toString());
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
        return new PurposeDisplayAdditionalDataProcessing.DataProcessingItem(spannableString, interfaceC1847o0);
    }

    private final PurposeDisplayBulkAction a(DidomiToggle.b bVar, boolean z) {
        String strE = E();
        boolean z2 = Build.VERSION.SDK_INT >= 30;
        return new PurposeDisplayBulkAction(strE, z2 ? strE : null, false, bVar, A(), B(), z, z2 ? null : strE, 4, null);
    }

    private final PurposeDisplayBulkAction a(boolean z) {
        String strE = E();
        boolean z2 = Build.VERSION.SDK_INT >= 30;
        return new PurposeDisplayBulkAction(strE, z2 ? strE : null, I.g(this.b), F(), A(), B(), z, z2 ? null : strE);
    }

    private final String a(int i2) {
        Map mapMapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{nb}", String.valueOf(i2)));
        return C1920v3.a(this.f8487f, i2 == 1 ? "single_partner_count" : "simple_partners_count", null, mapMapOf, null, 10, null);
    }

    private final void a(InternalPurpose internalPurpose, PurposeCategory purposeCategory) {
        if ((!StringsKt__StringsJVMKt.isBlank(internalPurpose.getId())) && Intrinsics.areEqual(internalPurpose.getId(), purposeCategory.getPurposeId())) {
            internalPurpose.setCategory(purposeCategory);
            b(purposeCategory);
        }
    }

    private final void a(InternalPurpose internalPurpose, DidomiToggle.b bVar) {
        int i2 = a.a[bVar.ordinal()];
        if (i2 == 1) {
            b(internalPurpose);
        } else if (i2 == 2) {
            x(internalPurpose);
        } else {
            if (i2 != 3) {
                return;
            }
            e(internalPurpose);
        }
    }

    private final void a(InternalVendor internalVendor) {
        this.f8488g.c().add(internalVendor);
    }

    private final boolean a() {
        return this.c.a(new HashSet(this.t)).size() == this.f8488g.b().size() && this.c.a(new HashSet(this.u)).size() == this.f8488g.d().size();
    }

    private final boolean a(List<InternalPurpose> list) {
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (!((InternalPurpose) it.next()).isEssential()) {
                    return true;
                }
            }
        }
        return false;
    }

    private final void b(InternalVendor internalVendor) {
        this.f8488g.g().add(internalVendor);
    }

    private final void b(PurposeCategory purposeCategory) {
        if (this.B) {
            return;
        }
        this.B = this.f8485d.a(purposeCategory.getIcon()) != 0;
    }

    private final PurposeDisplayHeader c() {
        SpannableString spannableString;
        String strK0 = k0();
        String strK = this.b.b().a().k();
        boolean z = strK.length() > 0 && !V5.a(k0(), strK);
        if (z) {
            spannableString = new SpannableString(C1920v3.a(this.f8487f, "our_privacy_policy", null, null, null, 14, null) + "[didomi_link_external]");
            spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
        } else {
            spannableString = null;
        }
        return new PurposeDisplayHeader(V5.k(V5.b(strK0)), spannableString, z ? C1920v3.a(this.f8487f, "link_privacy_policy", null, null, null, 14, null) : null, strK);
    }

    private final void c(InternalPurpose internalPurpose) {
        if (v(internalPurpose)) {
            b(internalPurpose);
        }
        if (w(internalPurpose)) {
            a(internalPurpose);
        }
    }

    private final boolean c(InternalVendor internalVendor) {
        List<String> purposeIds = internalVendor.getPurposeIds();
        if (!(purposeIds instanceof Collection) || !purposeIds.isEmpty()) {
            Iterator<T> it = purposeIds.iterator();
            while (it.hasNext()) {
                if (H8.a(this.f8488g, (String) it.next())) {
                    return true;
                }
            }
        }
        List<String> legIntPurposeIds = internalVendor.getLegIntPurposeIds();
        if (!(legIntPurposeIds instanceof Collection) || !legIntPurposeIds.isEmpty()) {
            Iterator<T> it2 = legIntPurposeIds.iterator();
            while (it2.hasNext()) {
                if (H8.a(this.f8488g, (String) it2.next())) {
                    return true;
                }
            }
        }
        List<String> specialFeatureIds = internalVendor.getSpecialFeatureIds();
        if (!(specialFeatureIds instanceof Collection) || !specialFeatureIds.isEmpty()) {
            Iterator<T> it3 = specialFeatureIds.iterator();
            while (it3.hasNext()) {
                InternalPurpose internalPurposeE = this.j.e((String) it3.next());
                if (internalPurposeE != null && H8.a(this.f8488g, internalPurposeE.getId())) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean c(List<PurposeDisplayItem> list) {
        return I.e(this.b) && this.Q && list.size() > 1;
    }

    private final void d(InternalPurpose internalPurpose, DidomiToggle.b bVar) {
        int i2 = a.a[bVar.ordinal()];
        if (i2 == 1) {
            a(internalPurpose);
            a(new PreferencesClickPurposeDisagreeEvent(internalPurpose.getId()));
        } else {
            if (i2 != 3) {
                return;
            }
            d(internalPurpose);
            a(new PreferencesClickPurposeAgreeEvent(internalPurpose.getId()));
        }
    }

    private final void d(DidomiToggle.b bVar) {
        int i2 = a.a[bVar.ordinal()];
        if (i2 == 1) {
            g();
            j();
        } else if (i2 == 2) {
            W0();
            o();
        } else {
            if (i2 != 3) {
                return;
            }
            l();
            o();
        }
    }

    private final void f(InternalPurpose internalPurpose) {
        if (v(internalPurpose)) {
            e(internalPurpose);
        }
        if (w(internalPurpose)) {
            d(internalPurpose);
        }
    }

    private final PurposeDisplayItem g(InternalPurpose internalPurpose) {
        int iA;
        String str;
        if (internalPurpose == null) {
            return null;
        }
        String strK = k(internalPurpose);
        String strY = Y();
        long jHashCode = internalPurpose.getId().hashCode();
        InterfaceC1931w4.a aVar = InterfaceC1931w4.a.Purpose;
        String id = internalPurpose.getId();
        if (this.B) {
            Z z = this.f8485d;
            PurposeCategory category = internalPurpose.getCategory();
            iA = z.a(category != null ? category.getIcon() : null);
        } else {
            iA = -1;
        }
        boolean zIsEssential = internalPurpose.isEssential();
        boolean zIsLegitimateInterestOnly = internalPurpose.isLegitimateInterestOnly();
        DidomiToggle.b bVarL = l(internalPurpose);
        if (internalPurpose.isEssential()) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.a;
            String str2 = String.format("%s, %s", Arrays.copyOf(new Object[]{strK, strY}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            str = str2;
        } else {
            str = strK;
        }
        return new PurposeDisplayItem(jHashCode, aVar, id, iA, strK, strY, zIsEssential, zIsLegitimateInterestOnly, str, w(), bVarL, z(), B(), false);
    }

    private final PurposeDisplayItem g(PurposeCategory purposeCategory) {
        String str;
        if (purposeCategory == null) {
            return null;
        }
        String strE = e(purposeCategory);
        String strY = Y();
        boolean zK = k(purposeCategory);
        long jHashCode = purposeCategory.getId().hashCode();
        InterfaceC1931w4.a aVar = InterfaceC1931w4.a.Category;
        String id = purposeCategory.getId();
        int iA = this.B ? this.f8485d.a(purposeCategory.getIcon()) : -1;
        DidomiToggle.b bVarF = f(purposeCategory);
        if (zK) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.a;
            String str2 = String.format("%s, %s", Arrays.copyOf(new Object[]{strE, strY}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            str = str2;
        } else {
            str = strE;
        }
        return new PurposeDisplayItem(jHashCode, aVar, id, iA, strE, strY, zK, false, str, w(), bVarF, z(), B(), false);
    }

    private final Map<String, String> g0() {
        InternalPurpose value = this.w.getValue();
        String name = value != null ? value.getName() : null;
        if (name == null) {
            name = "";
        }
        return MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{targetName}", name));
    }

    private final DidomiToggle.b h(InternalPurpose internalPurpose) {
        return C1860p3.a(this.f8488g.b(), internalPurpose) ? DidomiToggle.b.DISABLED : C1860p3.a(this.f8488g.f(), internalPurpose) ? DidomiToggle.b.ENABLED : DidomiToggle.b.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C1806k.g.a h0() {
        return (C1806k.g.a) this.M.getValue();
    }

    private final Set<String> i(PurposeCategory purposeCategory) {
        List<PurposeCategory> children = purposeCategory.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            String id = internalPurposeH != null ? internalPurposeH.getId() : null;
            if (id != null) {
                arrayList.add(id);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    private final void i() {
        this.f8488g.i().clear();
        this.f8488g.f(CollectionsKt___CollectionsKt.toMutableSet(this.v));
    }

    private final DidomiToggle.b j(InternalPurpose internalPurpose) {
        return C1860p3.a(this.f8488g.d(), internalPurpose) ? DidomiToggle.b.DISABLED : DidomiToggle.b.ENABLED;
    }

    private final void j() {
        this.f8488g.i(new LinkedHashSet());
        this.f8488g.e(CollectionsKt___CollectionsKt.toMutableSet(this.u));
    }

    private final X4 l0() {
        return (X4) this.P.getValue();
    }

    private final void n() {
        this.f8488g.e().clear();
        this.f8488g.j(CollectionsKt___CollectionsKt.toMutableSet(this.v));
    }

    private final void o() {
        this.f8488g.i(CollectionsKt___CollectionsKt.toMutableSet(this.u));
        this.f8488g.e(new LinkedHashSet());
    }

    private final void o1() {
        m();
        n();
        k();
        o();
    }

    private final boolean p(InternalPurpose internalPurpose) {
        return this.u.contains(internalPurpose);
    }

    private final void p1() {
        f();
        h();
        if (this.b.b().f().c()) {
            j();
            i();
        } else {
            o();
            n();
        }
    }

    private final boolean r1() {
        return I.l(this.b) && I.a(this.b) && (this.j.u().isEmpty() ^ true);
    }

    private final List<String> t() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8487f, "reset_consent_action", null, g0(), null, 10, null), C1920v3.a(this.f8487f, "disable_consent_action", null, g0(), null, 10, null), C1920v3.a(this.f8487f, "enable_consent_action", null, g0(), null, 10, null)});
    }

    private final void t(InternalPurpose internalPurpose) {
        if (v(internalPurpose)) {
            x(internalPurpose);
        }
        if (w(internalPurpose)) {
            d(internalPurpose);
        }
    }

    private final List<String> v() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8487f, "enable_li_action", null, g0(), null, 10, null), C1920v3.a(this.f8487f, "disable_li_action", null, g0(), null, 10, null), C1920v3.a(this.f8487f, "enable_li_action", null, g0(), null, 10, null)});
    }

    private final String w() {
        return C1920v3.a(this.f8487f, "know_more_about_this_purpose", null, null, null, 14, null);
    }

    private final void y1() {
        for (InternalVendor internalVendor : SetsKt___SetsKt.minus((Set) SetsKt___SetsKt.minus((Set) n0(), (Iterable) this.f8488g.g()), (Iterable) this.f8488g.c())) {
            if (c(internalVendor)) {
                b(internalVendor);
            } else {
                a(internalVendor);
            }
        }
        for (InternalVendor internalVendor2 : SetsKt___SetsKt.minus((Set) SetsKt___SetsKt.minus((Set) this.v, (Iterable) this.f8488g.i()), (Iterable) this.f8488g.e())) {
            if (c(internalVendor2)) {
                this.f8488g.i().add(internalVendor2);
            } else {
                this.f8488g.e().add(internalVendor2);
            }
        }
    }

    private final List<String> z() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8487f, "reset_this_purpose", null, null, null, 14, null), C1920v3.a(this.f8487f, "disable_this_purpose", null, null, null, 14, null), C1920v3.a(this.f8487f, "enable_this_purpose", null, null, null, 14, null)});
    }

    private final String z0() {
        return C1920v3.a(this.f8487f, this.b.b().e().a().d(), null, 2, null);
    }

    public final boolean A0() {
        return ((Boolean) this.L.getValue()).booleanValue();
    }

    public final boolean B0() {
        return this.c.q();
    }

    public final String C() {
        return C1920v3.a(this.f8487f, "list_of_additional_data_processing_on_purposes", null, null, null, 14, null);
    }

    public final boolean C0() {
        return ((Boolean) this.K.getValue()).booleanValue();
    }

    public final String D() {
        return C1920v3.a(this.f8487f, this.b.b().f().b().a(), "agree_to_all_5b7ca45d", (W5) null, 4, (Object) null);
    }

    public final List<InterfaceC1847o0> D0() {
        return CollectionsKt___CollectionsKt.sortedWith(this.j.g(), new e());
    }

    public final String E0() {
        return C1761f4.a.a(this.b, this.f8487f);
    }

    public final DidomiToggle.b F() {
        return b() ? DidomiToggle.b.ENABLED : a() ? DidomiToggle.b.DISABLED : DidomiToggle.b.UNKNOWN;
    }

    protected final List<PurposeCategory> G() {
        return this.G;
    }

    public final D8 G0() {
        return this.i;
    }

    public final Accessibility H() {
        return new Accessibility(C1920v3.a(this.f8487f, "close", null, null, null, 14, null), C1920v3.a(this.f8487f, "go_back_to_purposes_list", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    protected final H I() {
        return this.b;
    }

    protected final Set<InternalPurpose> J() {
        return this.t;
    }

    public final String K() {
        return T0() ? C1920v3.a(this.f8487f, "opt_in", (W5) null, (Map) null, 6, (Object) null) : C1920v3.a(this.f8487f, "consent", (W5) null, (Map) null, 6, (Object) null);
    }

    public final boolean K0() {
        return ((Boolean) this.y.getValue()).booleanValue();
    }

    public final boolean L() {
        return ((Boolean) this.z.getValue()).booleanValue();
    }

    public final Set<InternalPurpose> M() {
        return this.f8488g.d();
    }

    protected final G8 M0() {
        return this.f8488g;
    }

    public final Set<InternalPurpose> N() {
        return this.f8488g.b();
    }

    public final V8 N0() {
        return this.j;
    }

    public final Set<InternalPurpose> O() {
        Set<InternalPurpose> setB = this.f8488g.b();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setB) {
            if (!C1860p3.a((InternalPurpose) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final String O0() {
        return C1920v3.a(this.f8487f, "manage_our_partners", null, null, null, 14, null);
    }

    public final Set<InternalVendor> P() {
        return this.f8488g.c();
    }

    public List<InternalPurpose> P0() {
        this.r = CollectionsKt___CollectionsKt.toList(W8.c(this.j));
        return j1();
    }

    public final Set<InternalVendor> Q() {
        return this.f8488g.e();
    }

    public final boolean Q0() {
        return (p() && !w1()) || H0();
    }

    public final String R() {
        return C1920v3.a(this.f8487f, "refuse_data_processing", null, null, null, 14, null);
    }

    public final boolean R0() {
        InternalPurpose value = this.w.getValue();
        if (value == null) {
            return false;
        }
        return C1860p3.a(V(), value) || C1860p3.a(O(), value) || !C1860p3.a(this.t, value);
    }

    public final String S() {
        return C1920v3.a(this.f8487f, this.b.b().f().b().d(), "disagree_to_all_c0355616", (W5) null, 4, (Object) null);
    }

    public final boolean S0() {
        InternalPurpose value = this.w.getValue();
        return value != null && value.isEssential();
    }

    public final Set<InternalPurpose> T() {
        return this.f8488g.h();
    }

    public final boolean T0() {
        InternalPurpose value = this.w.getValue();
        return value != null && value.isSpecialFeature();
    }

    public final Set<InternalPurpose> U() {
        return this.f8488g.f();
    }

    protected final boolean U0() {
        return ((Boolean) this.p.getValue()).booleanValue();
    }

    public final Set<InternalPurpose> V() {
        Set<InternalPurpose> setF = this.f8488g.f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setF) {
            if (!C1860p3.a((InternalPurpose) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final void V0() {
        UserStatus.Vendors vendors = this.h.d().getVendors();
        for (InternalVendor internalVendor : n0()) {
            if (vendors.getGlobalConsent().getEnabled().contains(internalVendor.getId())) {
                b(internalVendor);
            } else if (vendors.getConsent().getDisabled().contains(internalVendor.getId())) {
                a(internalVendor);
            }
        }
    }

    public final Set<InternalVendor> W() {
        return this.f8488g.g();
    }

    public final Set<InternalVendor> X() {
        return this.f8488g.i();
    }

    public final boolean X0() {
        return V().isEmpty() && O().isEmpty() && (T().isEmpty() || T().size() == this.u.size()) && M().isEmpty();
    }

    public String Y() {
        return C1920v3.a(this.f8487f, "essential_purpose_label", W5.UPPER_CASE, null, null, 12, null);
    }

    public final void Y0() {
        o1();
        l1();
        a(new PreferencesClickAgreeToAllEvent());
        this.l.b();
        this.l.a();
    }

    public final boolean Z() {
        return ((Boolean) this.q.getValue()).booleanValue();
    }

    public final void Z0() {
        InitialPurposesHolder initialPurposesHolder = this.F;
        if (initialPurposesHolder != null) {
            C1840n3.a(initialPurposesHolder, this.f8488g);
        }
        k1();
    }

    public final PurposeCategory a(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.s.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((PurposeCategory) next).getId(), id)) {
                break;
            }
        }
        return (PurposeCategory) next;
    }

    public final List<InterfaceC1931w4> a(PurposeCategory category, boolean z) {
        Intrinsics.checkNotNullParameter(category, "category");
        ArrayList arrayList = new ArrayList();
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList2.add(internalPurposeH);
            }
        }
        if (d(CollectionsKt___CollectionsKt.distinct(arrayList2))) {
            arrayList.add(a(f(category), z));
        }
        List<PurposeCategory> children2 = category.getChildren();
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it2 = children2.iterator();
        while (it2.hasNext()) {
            InternalPurpose internalPurposeH2 = h((PurposeCategory) it2.next());
            if (internalPurposeH2 != null) {
                arrayList3.add(internalPurposeH2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            PurposeDisplayItem purposeDisplayItemG = g((InternalPurpose) it3.next());
            if (purposeDisplayItemG != null) {
                arrayList4.add(purposeDisplayItemG);
            }
        }
        arrayList.addAll(CollectionsKt___CollectionsKt.distinct(arrayList4));
        return CollectionsKt___CollectionsKt.toList(arrayList);
    }

    public final void a(Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f8486e.c(event);
    }

    public final void a(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (p(purpose)) {
            this.f8488g.b(purpose);
        }
    }

    public final void a(PurposeCategory category, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(state, "state");
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList.add(internalPurposeH);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((InternalPurpose) obj).isEssential()) {
                arrayList2.add(obj);
            }
        }
        int i2 = a.a[state.ordinal()];
        if (i2 == 1) {
            a(new PreferencesClickCategoryDisagreeEvent(category.getId()));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                c((InternalPurpose) it2.next());
            }
        } else if (i2 != 3) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                t((InternalPurpose) it3.next());
            }
        } else {
            a(new PreferencesClickCategoryAgreeEvent(category.getId()));
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                f((InternalPurpose) it4.next());
            }
        }
        f1();
    }

    public final void a(DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(state, "state");
        int i2 = a.a[state.ordinal()];
        if (i2 == 1) {
            a(new PreferencesClickDisagreeToAllPurposesEvent());
        } else if (i2 == 2) {
            a(new PreferencesClickResetAllPurposesEvent());
        } else if (i2 == 3) {
            a(new PreferencesClickAgreeToAllPurposesEvent());
        }
        d(state);
    }

    protected void a(List<InternalPurpose> purposes, List<PurposeCategory> categories) {
        Intrinsics.checkNotNullParameter(purposes, "purposes");
        Intrinsics.checkNotNullParameter(categories, "categories");
    }

    public final boolean a(PurposeCategory purposeCategory) {
        int i2;
        if (purposeCategory == null) {
            return false;
        }
        Set<String> setI = i(purposeCategory);
        if ((setI instanceof Collection) && setI.isEmpty()) {
            i2 = 0;
        } else {
            Iterator<T> it = setI.iterator();
            i2 = 0;
            while (it.hasNext()) {
                InternalPurpose internalPurposeB = b((String) it.next());
                if (internalPurposeB != null && (C1860p3.a(V(), internalPurposeB) || C1860p3.a(O(), internalPurposeB) || internalPurposeB.isEssential() || !C1860p3.a(this.t, internalPurposeB))) {
                    i2++;
                    if (i2 < 0) {
                        CollectionsKt__CollectionsKt.throwCountOverflow();
                    }
                }
            }
        }
        return i2 == setI.size();
    }

    public final boolean a0() {
        return this.Q;
    }

    public final void a1() {
        this.F = InitialPurposesHolder.INSTANCE.a(this.f8488g);
    }

    public final InternalPurpose b(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.r.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((InternalPurpose) next).getId(), id)) {
                break;
            }
        }
        return (InternalPurpose) next;
    }

    public final void b(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        this.f8488g.a(purpose);
    }

    public final void b(InternalPurpose purpose, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(state, "state");
        a(purpose, state);
        int i2 = a.a[state.ordinal()];
        if (i2 == 1) {
            a(new PreferencesClickPurposeDisagreeEvent(purpose.getId()));
        } else if (i2 == 3) {
            a(new PreferencesClickPurposeAgreeEvent(purpose.getId()));
        }
        this.C.setValue(state);
        this.a.h();
    }

    public final void b(DidomiToggle.b value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.C.setValue(value);
    }

    protected final void b(List<InternalPurpose> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.r = list;
    }

    public final void b(boolean z) {
        this.A = z;
    }

    public final boolean b() {
        return this.c.a(new HashSet(this.t)).size() == this.f8488g.f().size() && this.c.a(new HashSet(this.u)).size() == this.f8488g.h().size();
    }

    public final List<String> b0() {
        ArrayList arrayList;
        List<String> illustrations;
        InternalPurpose value = this.w.getValue();
        if (value == null || (illustrations = value.getIllustrations()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(illustrations, 10));
            Iterator<T> it = illustrations.iterator();
            while (it.hasNext()) {
                arrayList.add(StringsKt__StringsKt.trim((String) it.next()).toString());
            }
        }
        return arrayList == null ? CollectionsKt__CollectionsKt.emptyList() : arrayList;
    }

    public final void b1() {
        p1();
        l1();
        a(new PreferencesClickDisagreeToAllEvent());
        this.l.b();
        this.l.a();
    }

    public final List<InterfaceC1931w4> c(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        ArrayList arrayList = new ArrayList();
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList2.add(internalPurposeH);
            }
        }
        if (K0()) {
            arrayList.add(new PurposeDisplayCategoryHeader("", d(category)));
        } else {
            arrayList.add(new PurposeDisplayCategoryHeader(e(category), d(category)));
        }
        if (d(arrayList2)) {
            arrayList.add(a(f(category), false));
        }
        List<PurposeCategory> children2 = category.getChildren();
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it2 = children2.iterator();
        while (it2.hasNext()) {
            InternalPurpose internalPurposeH2 = h((PurposeCategory) it2.next());
            if (internalPurposeH2 != null) {
                arrayList3.add(internalPurposeH2);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            PurposeDisplayItem purposeDisplayItemG = g((InternalPurpose) it3.next());
            if (purposeDisplayItemG != null) {
                arrayList4.add(purposeDisplayItemG);
            }
        }
        arrayList.addAll(CollectionsKt___CollectionsKt.distinct(arrayList4));
        return arrayList;
    }

    public final void c(InternalPurpose purpose, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(state, "state");
        d(purpose, state);
        c(state);
        this.a.h();
    }

    public final void c(DidomiToggle.b bVar) {
        this.D.setValue(bVar);
    }

    public final boolean c(boolean z) {
        C1806k c1806kB = this.b.b();
        return c1806kB.a().l() || (z && c1806kB.f().g());
    }

    public String c0() {
        return C1920v3.a(this.f8487f, "purpose_illustration_explanation", null, null, null, 14, null);
    }

    public final void c1() {
        this.l.b();
    }

    protected final String d(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        return C1920v3.a(this.f8487f, category.getDescription(), null, 2, null);
    }

    public final List<PurposeDisplayItem> d() {
        ArrayList arrayList = new ArrayList();
        List<PurposeCategory> list = this.G;
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            PurposeDisplayItem purposeDisplayItemG = g((PurposeCategory) it.next());
            if (purposeDisplayItemG != null) {
                arrayList2.add(purposeDisplayItemG);
            }
        }
        arrayList.addAll(arrayList2);
        List<InternalPurpose> list2 = this.I;
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            PurposeDisplayItem purposeDisplayItemG2 = g((InternalPurpose) it2.next());
            if (purposeDisplayItemG2 != null) {
                arrayList3.add(purposeDisplayItemG2);
            }
        }
        arrayList.addAll(arrayList3);
        return arrayList;
    }

    public final List<InterfaceC1931w4> d(boolean z) {
        ArrayList arrayList = new ArrayList();
        List<PurposeDisplayItem> listD = d();
        if (c(listD)) {
            arrayList.add(a(z));
        }
        arrayList.addAll(listD);
        return CollectionsKt___CollectionsKt.toList(arrayList);
    }

    public final void d(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (p(purpose)) {
            this.f8488g.d(purpose);
        }
    }

    protected final boolean d(List<InternalPurpose> purposes) {
        Intrinsics.checkNotNullParameter(purposes, "purposes");
        return I.f(this.b) && a(purposes) && purposes.size() > 1;
    }

    protected final C1920v3 d0() {
        return this.f8487f;
    }

    public final void d1() {
        InitialPurposesHolder initialPurposesHolder = this.F;
        if (initialPurposesHolder != null) {
            C1840n3.a(initialPurposesHolder, this.f8488g);
        }
        InternalPurpose value = this.w.getValue();
        if (value != null) {
            this.D.setValue(j(value));
            this.C.setValue(h(value));
        }
        k1();
    }

    public final String e(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        return C1920v3.a(this.f8487f, category.getName(), null, 2, null);
    }

    public final List<InterfaceC1931w4> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(c());
        List<PurposeDisplayItem> listD = d();
        if (c(listD)) {
            arrayList.add(a(false));
        }
        arrayList.addAll(listD);
        if (s1()) {
            String strC = C();
            String strW = w();
            List<InterfaceC1847o0> listD0 = D0();
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listD0, 10));
            Iterator<T> it = listD0.iterator();
            while (it.hasNext()) {
                arrayList2.add(a((InterfaceC1847o0) it.next()));
            }
            arrayList.add(new PurposeDisplayAdditionalDataProcessing(strC, strW, arrayList2));
        }
        if (u1()) {
            arrayList.add(new PurposeDisplaySdkStorageDisclosure(C1920v3.a(this.f8487f, "sdk_storage_disclosure_title", null, null, null, 14, null), C1920v3.a(this.f8487f, "sdk_storage_disclosure_accessibility", null, null, null, 14, null)));
        }
        if (r1()) {
            arrayList.add(new PurposeDisplayFooterSensitivePersonalInfo(z0()));
        }
        arrayList.add(new PurposeDisplayFooterVendor(O0()));
        return arrayList;
    }

    public final void e(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        this.f8488g.c(purpose);
    }

    public final void e(InternalPurpose purpose, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(state, "state");
        int i2 = a.a[state.ordinal()];
        if (i2 == 1) {
            r(purpose);
        } else if (i2 == 2) {
            t(purpose);
        } else if (i2 == 3) {
            s(purpose);
        }
        f1();
    }

    public final String e0() {
        return C1920v3.a(this.f8487f, "legitimate_interest", (W5) null, (Map) null, 6, (Object) null);
    }

    public final void e1() {
        this.F = InitialPurposesHolder.INSTANCE.a(this.f8488g);
    }

    public final DidomiToggle.b f(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList.add(internalPurposeH);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!((InternalPurpose) obj).isEssential()) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(l((InternalPurpose) it2.next()));
        }
        List listDistinct = CollectionsKt___CollectionsKt.distinct(arrayList3);
        return listDistinct.size() == 1 ? (DidomiToggle.b) kotlin.collections.p.first(listDistinct) : DidomiToggle.b.UNKNOWN;
    }

    public final void f() {
        this.f8488g.g(new LinkedHashSet());
        this.f8488g.c(CollectionsKt___CollectionsKt.toMutableSet(this.j.l()));
    }

    public final C3 f0() {
        return this.k;
    }

    protected final void f1() {
        this.a.h();
    }

    public final void g() {
        this.f8488g.g(new LinkedHashSet());
        this.f8488g.c(CollectionsKt___CollectionsKt.toMutableSet(this.c.a(this.j.l())));
    }

    public final void g1() {
        if (C0()) {
            return;
        }
        this.a.k();
    }

    protected final InternalPurpose h(PurposeCategory purposeCategory) {
        Intrinsics.checkNotNullParameter(purposeCategory, "purposeCategory");
        if (C1901t4.a(purposeCategory) == PurposeCategory.Type.Purpose) {
            return b(purposeCategory.getPurposeId());
        }
        return null;
    }

    public final void h() {
        this.f8488g.g().clear();
        this.f8488g.d(CollectionsKt___CollectionsKt.toMutableSet(n0()));
    }

    public final void h1() {
        z1();
        a(new PreferencesClickSaveChoicesEvent());
        this.l.b();
        this.l.a();
    }

    public final String i(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        return StringsKt__StringsKt.trim(purpose.getDescription()).toString();
    }

    public final String i0() {
        InternalPurpose value = this.w.getValue();
        return V5.l(value != null ? value.getDescriptionLegal() : null).toString();
    }

    public final void i1() {
        this.l.b();
    }

    public final void j(PurposeCategory selectedCategory) {
        Intrinsics.checkNotNullParameter(selectedCategory, "selectedCategory");
        this.E.setValue(f(selectedCategory));
    }

    protected final List<InternalPurpose> j0() {
        return this.I;
    }

    public final List<InternalPurpose> j1() {
        List<InternalPurpose> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.r);
        C1860p3.a(mutableList);
        if (this.s.isEmpty()) {
            return mutableList;
        }
        a(mutableList, this.s);
        this.B = false;
        for (InternalPurpose internalPurpose : mutableList) {
            Iterator<T> it = this.s.iterator();
            while (it.hasNext()) {
                a(internalPurpose, (PurposeCategory) it.next());
            }
        }
        return mutableList;
    }

    public final String k(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        return purpose.getName();
    }

    public final void k() {
        this.f8488g.g(CollectionsKt___CollectionsKt.toMutableSet(this.j.l()));
        this.f8488g.c(new LinkedHashSet());
    }

    public final boolean k(PurposeCategory purposeCategory) {
        Intrinsics.checkNotNullParameter(purposeCategory, "purposeCategory");
        List<PurposeCategory> children = purposeCategory.getChildren();
        boolean z = false;
        if (children.isEmpty()) {
            return false;
        }
        if (!children.isEmpty()) {
            Iterator<T> it = children.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
                if (internalPurposeH != null && !internalPurposeH.isEssential()) {
                    z = true;
                    break;
                }
            }
        }
        return !z;
    }

    public final String k0() {
        return C1920v3.a(this.f8487f, this.b.b().f().b().j(), "preferences_message", (W5) null, 4, (Object) null);
    }

    public final void k1() {
        this.w.setValue(null);
        this.C.setValue(null);
        this.D.setValue(null);
    }

    public final DidomiToggle.b l(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        DidomiToggle.b bVar = DidomiToggle.b.UNKNOWN;
        return ((C1860p3.a(this.f8488g.f(), purpose) || !v(purpose)) && (C1860p3.a(this.f8488g.h(), purpose) || !w(purpose))) ? DidomiToggle.b.ENABLED : (C1860p3.a(this.f8488g.b(), purpose) || !v(purpose)) ? (C1860p3.a(this.f8488g.d(), purpose) || !w(purpose)) ? DidomiToggle.b.DISABLED : bVar : bVar;
    }

    public final void l() {
        this.f8488g.g(CollectionsKt___CollectionsKt.toMutableSet(this.c.a(this.j.l())));
        this.f8488g.c(new LinkedHashSet());
    }

    public final void l(PurposeCategory item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.x.setValue(item);
    }

    public final void l1() {
        this.c.a(U(), N(), T(), M(), W(), P(), X(), Q(), true, CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.a, this.f8486e, this.h);
    }

    public final String m(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (U0()) {
            return a(W8.a(this.j, purpose).size());
        }
        return null;
    }

    public final void m() {
        this.f8488g.c().clear();
        this.f8488g.h(CollectionsKt___CollectionsKt.toMutableSet(n0()));
    }

    public final boolean m(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList.add(internalPurposeH);
            }
        }
        return !d(arrayList);
    }

    protected final Set<InternalPurpose> m0() {
        return this.u;
    }

    public final boolean m1() {
        InternalPurpose value = this.w.getValue();
        return value != null && value.isConsentNotEssential();
    }

    public final String n(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (U0()) {
            return a(W8.b(this.j, purpose).size());
        }
        return null;
    }

    protected final Set<InternalVendor> n0() {
        return this.j.r();
    }

    public final boolean n1() {
        InternalPurpose value = this.w.getValue();
        return (value == null || !value.isLegitimateInterestNotEssential() || value.isSpecialFeature()) ? false : true;
    }

    public final void o(InternalPurpose selectedPurpose) {
        Intrinsics.checkNotNullParameter(selectedPurpose, "selectedPurpose");
        this.D.setValue(j(selectedPurpose));
        this.C.setValue(h(selectedPurpose));
    }

    public final String o0() {
        return C1920v3.a(this.f8487f, F0(), l0().a(), (W5) null, 4, (Object) null);
    }

    public final boolean p() {
        return V().size() + O().size() == this.t.size() && T().size() + M().size() == this.u.size();
    }

    public final String p0() {
        return C1920v3.a(this.f8487f, "disabled_save_button_description", null, null, null, 14, null);
    }

    public final String q() {
        return C1920v3.a(this.f8487f, "accept_data_processing", null, null, null, 14, null);
    }

    public final boolean q(InternalPurpose internalPurpose) {
        return C1860p3.a(this.f8488g.h(), internalPurpose);
    }

    public final String q0() {
        return C1920v3.a(this.f8487f, this.b.b().f().b().g(), "save_11a80ec3", (W5) null, 4, (Object) null);
    }

    public final boolean q1() {
        return this.b.b().f().a() || !this.c.k();
    }

    public final String r() {
        return C1920v3.a(this.f8487f, "close", null, null, null, 14, null);
    }

    protected final void r(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        c(purpose);
        a(new PreferencesClickPurposeDisagreeEvent(purpose.getId()));
    }

    public final String r0() {
        return C1920v3.a(this.f8487f, "disable_buttons_until_scroll_indicator", W5.UPPER_CASE, null, null, 12, null);
    }

    public final String s() {
        return C1920v3.a(this.f8487f, "close_purpose_view", null, null, null, 14, null);
    }

    protected final void s(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        f(purpose);
        a(new PreferencesClickPurposeAgreeEvent(purpose.getId()));
    }

    public final MutableLiveData<PurposeCategory> s0() {
        return this.x;
    }

    public final boolean s1() {
        return !this.j.g().isEmpty();
    }

    public final MutableLiveData<DidomiToggle.b> t0() {
        return this.E;
    }

    public final boolean t1() {
        String descriptionLegal;
        InternalPurpose value = this.w.getValue();
        if (value == null || (descriptionLegal = value.getDescriptionLegal()) == null) {
            return false;
        }
        return !StringsKt__StringsJVMKt.isBlank(descriptionLegal);
    }

    public final String u() {
        return C1920v3.a(this.f8487f, "consent_management", null, null, null, 14, null);
    }

    public final void u(InternalPurpose item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.w.setValue(item);
    }

    public final MutableLiveData<InternalPurpose> u0() {
        return this.w;
    }

    public final boolean u1() {
        return C1816l.b(this.b.b());
    }

    public final boolean v(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        return purpose.isConsentNotEssential();
    }

    public final Accessibility v0() {
        DidomiToggle.b value = this.C.getValue();
        if (value == null) {
            value = DidomiToggle.b.UNKNOWN;
        }
        int iOrdinal = value.ordinal();
        return new Accessibility(C1920v3.a(this.f8487f, "consent", null, null, null, 14, null), t().get(iOrdinal), B().get(iOrdinal), false, 0, null, 56, null);
    }

    public final boolean v1() {
        return s1();
    }

    public final boolean w(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        return purpose.isLegitimateInterestNotEssential();
    }

    public final MutableLiveData<DidomiToggle.b> w0() {
        return this.C;
    }

    public final boolean w1() {
        return L() && !this.A && !p() && X0();
    }

    public final String x() {
        return C1920v3.a(this.f8487f, "save_data_processing_choices", null, null, null, 14, null);
    }

    public final void x(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        this.f8488g.e(purpose);
    }

    public final Accessibility x0() {
        DidomiToggle.b value = this.D.getValue();
        if (value == null) {
            value = DidomiToggle.b.ENABLED;
        }
        Intrinsics.checkNotNullExpressionValue(value, "selectedPurposeLegIntSta…idomiToggle.State.ENABLED");
        return new Accessibility(C1920v3.a(this.f8487f, "legitimate_interest", null, null, null, 14, null), v().get((value == DidomiToggle.b.ENABLED ? value : DidomiToggle.b.UNKNOWN).ordinal()), B().get(value.ordinal()), false, 0, null, 56, null);
    }

    public final void x1() {
        H8.a(this.f8488g, this.c.b(), this.j);
    }

    public final String y() {
        return C1920v3.a(this.f8487f, "save_vendor_and_back_to_purpose", null, null, null, 14, null);
    }

    public final MutableLiveData<DidomiToggle.b> y0() {
        return this.D;
    }

    public void z1() {
        y1();
        l1();
    }
}
