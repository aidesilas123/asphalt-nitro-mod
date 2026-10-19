package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.applovin.adview.AdViewController;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.mediation.MaxAd;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.json.adqualitysdk.sdk.i.az;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class be extends az {
    private static char[] t = null;
    private static long u = 0;
    private static int v = 0;
    private static int w = 1;

    final class a implements az.d {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.t((AppLovinCommunicatorMessage) list.get(0));
        }
    }

    final class b implements az.d {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            be.W((AdViewController) list.get(0), (AppLovinAdDisplayListener) list.get(1));
            return null;
        }
    }

    final class c implements az.d {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            be.F((AppLovinNativeAdImpl) list.get(0), (AppLovinNativeAdEventListener) list.get(1));
            return null;
        }
    }

    final class d implements az.d {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            be.O((AppLovinInterstitialAdDialog) list.get(0), (AppLovinAdVideoPlaybackListener) list.get(1));
            return null;
        }
    }

    final class e implements AppLovinCommunicatorSubscriber {
        private /* synthetic */ String a;

        e(String str) {
            this.a = str;
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorEntity
        public final String getCommunicatorId() {
            return this.a;
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
        public final void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        }
    }

    final class f implements az.d {
        f() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.R((AppLovinNativeAdImpl) list.get(0));
        }
    }

    final class g implements az.d {
        g() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.H((AppLovinAd) list.get(0));
        }
    }

    final class h implements az.d {
        h() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.S((AppLovinAdView) list.get(0));
        }
    }

    final class i implements az.d {
        i() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Long.valueOf(be.D((AppLovinAd) list.get(0)));
        }
    }

    final class j implements az.d {
        j() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.u((AppLovinAd) list.get(0));
        }
    }

    final class k implements az.d {
        k() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(be.Q((AppLovinAd) list.get(0)));
        }
    }

    final class l implements az.d {
        l() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.U((AppLovinAd) list.get(0));
        }
    }

    final class m implements az.d {
        m() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.N((MaxAd) list.get(0));
        }
    }

    final class n implements az.d {
        n() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(be.n((AppLovinAd) list.get(0)));
        }
    }

    final class o implements az.d {
        o() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.T((Context) list.get(0));
        }
    }

    final class p implements az.d {
        p() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            be.X((AppLovinInterstitialAdDialog) list.get(0), (AppLovinAdClickListener) list.get(1));
            return null;
        }
    }

    final class q implements az.d {
        q() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return Boolean.valueOf(be.C(be.this, (AppLovinAd) list.get(0)));
        }
    }

    final class r implements az.d {
        r() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            be.B(be.this, (Context) list.get(0), (String) list.get(1), (String) list.get(2));
            return null;
        }
    }

    final class s implements az.d {
        s() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            be.J((AppLovinBroadcastManager) list.get(0), (AppLovinBroadcastManager.Receiver) list.get(1), (IntentFilter) list.get(2));
            return null;
        }
    }

    final class t implements az.d {
        t() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            be.P((AppLovinBroadcastManager) list.get(0), (AppLovinBroadcastManager.Receiver) list.get(1));
            return null;
        }
    }

    final class u implements az.d {
        u() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.az.d
        /* JADX INFO: renamed from: ｋ */
        public final Object mo389(List<Object> list, ch chVar) {
            return be.K((AppLovinNativeAdImpl) list.get(0));
        }
    }

    static {
        char[] cArr = new char[2053];
        ByteBuffer.wrap("ÿ\u0085Û\"¶\u0098\u0092JmóI\\$)ÿ°Û'¶æ\u0092sïÀËg¦Ý\u0082\u000f}¶Y\u00194lïõËp¦£±B\u0095åø_Ü\u008d#4\u0007\u009bjî±w\u0095òø!Ü\u0089#\u0018\u0006njê\u0000c$ùIAmì\u00929¶\u009eÛô\u0000v$ßI0mµ\u0092\u001c·&Ûÿ\u0000P$¼I\tm\u0093\u0092û·\fÛù\u0000>$\u0094I6n\u007f\u0092Ð·UÛ¼\u0000)$\u009aIÂnC\u0092¥·!\u0000A$òIzm«\u0092=¶\u0099ÛÇ\u0000u$ÞI2m®\u0092\u001d·dÛò\u0000Q$¸\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$ùI(m¨\u0092\u0017·zÛí\u0000@$£I\u0014m\u009f\u0092í·NÛù\u0000-$\u0090I\u0013nf\u0092Ï·HÛ«\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$ùI(m¨\u0092\u0017·zÛí\u0000@$£I\u0014m\u009f\u0092í·NÛù\u0000*$ I\u0013nq\u0092Ê·SÛµ\u008fì«KÆñâ#\u001d\u009a95T@\u008fÙ«\\Æ\u008fâ2\u001d³8ÌTP\u008fò«+Æ¤â(\u001dU8êT{\u008f\u0086«;!=\u0005\u009ah Lò³K\u0097äú\u0091!\b\u0005\u008dh^Lä³g\u0096\u0007ú\u0092!$\u0005×heLÆ³\u0099\u0096-ú°!W\u0005öhcO\u001e\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$ñI\"m\u008e\u0092\u0017·\u007fÛÿ\u0000F$®I,m\u009f\u0092ÿ·VÛÝ\u0000 $\u0081I\b\u009a+¾\u008cÓ6÷ä\b],òA\u0087\u009a\u001e¾\u009bÓH÷à\bq-\u0006A\u0091\u009a1¾ðÓf÷ý\b\u009f-*A³\u009aG¾åÓ\\ô\u0013\b¿-\"AÝ\u009al¾ñÓ\u008c÷/Ó\u0088¾2\u009aàeYAö,\u0083÷\u001aÓ\u009f¾L\u009aáeu@\u001c,\u0095\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$ñI\"m\u0088\u0092\u000b·xÛû\u0085*¡\u008dÌ7èå\u0017\\3ó^\u0086\u0085\u001f¡\u0092ÌCèÔ\u0017|2\r^\u0081\u00856¡×Ìbèç\u0017\u00822-^\u009a\u0085K¡ûÌtë\t\u0017¾2#^Ð\u0085w¡üÌ\u009eë-\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$ùI(m¨\u0092\u0017·zÛí\u0000@$£I\u0014m\u009f\u0092í·NÛù\u0000*\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$çI#m¾\u0092$·aÛû\u0000C$\u008bI\u0003m\u0082\u0092å·TÛÑ\u0000:$\u009d¶C\u0092äÿ^Û\u008c$5\u0000\u009amï¶v\u0092óÿ Û\u008d$\u0015\u0001xmê¶_\u0092«ÿ\u0007Û½$ã\u0001PmÖ\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$ñI\"m\u008a\u0092\u001b·mÛé\u0000q$¼I\u0005m\u0098\u0092ø·nÛÑ\u0000=$\u0090I\u001fn~\u0092Ã·N\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$æI/m¸\u0092\u0017·gÛÈ\u0000]$¯I\u0017\u0000A$òIzm«\u0092=¶\u0099ÛÇ\u0000u$ÞI2m®\u0092\u001d·dÛò\u0000Q$¸I)m\u009b\u0092ü·N\u0013Å7bZØ~\n\u0081³¥\u001cÈi\u0013ð7uZ¦~\u001a\u0081\u0097¤ÿÈ\u007f\u0000M$÷ITm\u0083\u0092<¶¸Ûí\u0000\u007f$Ç\u0000M$÷ITm\u008b\u00926¶\u009aÛá\u0000h$ÃI2mµ\u0092\u0006·aÛÿ\u0000X$\u008bI\u0004ü\u001bØ¡µ\u0002\u0091ÆnkJÏ'³ü>Ø\u0082µu\u0091îneK:8;\u001c\u0081q\"UõªJ\u008eÎã\u009b8\t\u001c±qyUÇªt\u008f\u00122\u008d\u00167{\u0094_D í\u0084Bé(2©\u0016\u0013{ô_y ×\u0085¦é\u001f2\u0090\u0016C{Í_F  \u0000M$÷ITm\u0083\u0092<¶\u008fÛô\u0000n$ÕI4m\u008c\u0092\u0013·zÛÿ\u0000Y$¯I\u0014m\u0093\u0092þ·QÛñ\u0000#$\u0094I\u0016\u0000M$óIHm«\u00929¶\u009aÛí\u0000u$ÞI\u0015m¹\u0092\u0000·~Û÷\u0000W$¯I)m\u009b\u0092ü·N\u0000M$÷ITm\u0083\u0092<¶\u008fÛô\u0000n$ÕI4a\u009bE!(\u0082\fUóê\u0000M$÷ITm\u0083\u0092<¶¨Ûë\u0000h$ÝI'm¨ú¬Þ\u0016³µ\u0097bhÝLC!\fú\u0088Þ%³Â\u0097ShöM\u009bP·t\r\u0019®=yÂÆæB\u008b\u0017P\u0085t=\u0019ý=BÂÄç\u009b\u008b\u0017PºtU\u0019ô=iÂ\u0004\u0085»¡\u0001Ì¢èf\u0017Ë3o^\u0013\u0085\u009e¡\"\u001bO?õRVv\u0092\u0089?\u00ad\u009bÀç\u001bj?ÖR!vº\u00891¬nÀÐ\u001b_?»R\u0016v\u0091\u0089à¬EÀÈ\u0000M$óIHm«\u00929¶\u009aÛí\u0000u$ÞI\u0007m¸\u0092\u0013·xÛê\u0000Q$¸I\"m\u0097\u0092ÿ·GÂ¬æ\u000b\u008b±¯cPÚtu\u0019\u0000Â\u0099æ\u0010\u008bÎ¯UPöu\u0084\u0019\u0007Â°æH\u008bã¯ZP\u0005u®\u0019%Â×æl\u008bå¦\u0090\u0082.ï\u0095Ëv4ä\u0010G}0¦¨\u0082\u0003ïÚËe4Î\u0011¥}7¦\u008c\u0082eïïËD4$\u0011\u008b}\u0000¦áÍ\u0002é¸\u0084\u001b Ì_s{÷\u0016¢Í0é\u0088\u0084H ÷_\\z7\u0016¥Í\u001eé÷\u0000M$÷ITm\u008b\u00926¶\u009aÛá\u0000h$ÃI2mµ\u0092\u0006·aÛÿ\u0000X$\u008bI\u0004m\u0097\u0092ü·VÛÝ\u0000<¨7\u008c\u008dá.Åê:G\u001eãs\u009f¨\u0012\u008c®áYÅÂ:I\u001f\u0016s\u0085¨>\u008cÄá\u007fÅþÎ>ê\u0084\u0087'£â\\Bxú\u0015\u0099Î\bê¯\u0087e£Ý\\ny\r\u0015\u0084Î#êÜ\u0087aÿÈÛr¶Ñ\u0092\u0006m¹I\n$qÿëÛP¶±\u0092\tm\u0096Hÿ$zÿÜÛ*¶\u0091\u0092\u0016m{HÔ\u0000M$÷ITm\u0083\u0092<¶\u008fÛô\u0000n$ÕI4m\u008e\u0092\u0017·{Ûî\u0000[$¤I\u0013m\u0093\u0092Ü·CÛÊ\u0000/$\u0089I\u001fnd\u0092Ã·NÛ¡w3S\u0089>*\u001aýåBÁñ¬\u008aw\u0010S«>J\u001añåeÀ\u0011¬\u008ew+SØ>]\u001açå\u009eÀ0¬£wSSî>m\u0019\u0001å¶À\u0012¬ÍwdSá>\u0087\u00191åÊÀM¬àw\u008f\u0000M$÷ITm\u0083\u0092<¶\u008fÛô\u0000n$ÕI4m\u0095\u0092\u001c·aÛê\u0000]$«I\fm\u009f\u0092ö·CÛÌ\u0000'$\u008bI\u0014n@\u0092Ç·NÛ³\u0000\u0005$\u009bIànO\u0092²·%Ö\bò²\u009f\u0011»ÆDy`Ê\r±Ö+ò\u0090\u009fq»ÕD^a>\r¯Ö\u0014òá\u009f@»Á\u0000M$÷ITm\u0083\u0092<¶¸Ûí\u0000\u007f$ÇI\u0007m¸\u0092\u0013·xÛê\u0000Q$¸I,m\u009f\u0092ÿ·VÛÝ\u0000 $\u0081I\b\u0000M$÷ITm\u008b\u00926¶\u009aÛá\u0000h$ÃI2mµ\u0092\u0006·aÛÿ\u0000X$\u008bI\u0004m\u0097\u0092ü·VÛÝ\u0000<$¨I\u0013nc\u0092Ò·YÛ¼\u0000\r$\u008c\u0000M$÷ITm\u0090\u0092=¶\u0099Ûå\u0000h$ÔI#m¸\u00923·lÛÿ\u0000D$¾I\u0005m\u0084\u0092À·KÛË\u0000:$\u0081I\u0014nu\u0092Ô\u0000M$÷ITm\u0091\u00921¶\u0089Ûê\u0000{$ÜI\u0005m³\u0092\u001e·dÛû\u0000W$¾I\tm\u0099\u0092â·nÛÑ\u0000=$\u0090I\u001fn~\u0092Ã·N\u0000M$÷ITm\u0087\u0092*¶\u009cÛë\u0000h\u009eêºM×÷ó%\f\u009c(3EF\u009eßºY×\u009fó\u0018\f¸)ÇEV\u009eþº\u0012×¿ó\u0010\fF)çEr\u009e\u0082º*×£\u008fk«ÌÆvâ¤\u001d\u001d9²TÇ\u008f^«ØÆ\u001eâ\u0099\u001d98FT×\u008f\u007f«\u0093Æ>â\u0091\u001dÇ8fTó\u008f\u0003««Æ\"áh\u001dé8uT\u009d\u008f+«¢ÆÛár>î\u001aIwóS!¬\u0098\u00887åB>Û\u001a\\w\u0086S\u001e¬°\u0089Òå_>ò\u001a\u0006w®S-¬L\u0089ÿåZ>\u0084\u001a8w¦PÞ¬n\u0089ö\u0000C$ùIAm¯\u0092-¶\u0080Ûí\u0000y$ÑI2m³\u0092\u0000·EÛû\u0000G$¹I\u0001m\u0091\u0092é·kÛÕ\u0000>$\u0088\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$óI)m±\u0092\u001f·}Ûð\u0000]$©I\u0001m\u0082\u0092ã·P\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$óI)m±\u0092\u001f·}Ûð\u0000]$©I\u0001m\u0082\u0092ã·PÛë\u0000;$\u0086I\tns\u0092Ô·UÛ°\u0000\r$\u008c\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$óI)m±\u0092\u001f·}Ûð\u0000]$©I\u0001m\u0082\u0092ã·PÛè\u0000;$\u0086I\u0016ny\u0092Õ·TÛ·\u0000\u001a\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$óI)m±\u0092\u001f·}Ûð\u0000]$©I\u0001m\u0082\u0092ã·PÛõ\u0000+$\u0097I\tnq\u0092Á·UÛ¼\u0000\u000f$\u00adIñnX\u0092¶·?Û\u008f\u0000çÌ\u0099è>\u0085\u0084¡V^ïz@\u00175Ì¬è+\u0085ñ¡i^Ç{¥\u0017(Ì\u0085èq\u0085Ù¡Z^;{\u0088\u0017%ÌøèH\u0085Ë¢¼^\u0007\u0095Ý±zÜÀø\u0012\u0007«#\u0004Nq\u0095è±jÜ¯ø,\u0007\u0082\"çNa\u0095Ú±3Ü\u0099ø\u0004\u0007D\"ÖNA\u0095¿±\u001dÜ\u0082ûÍ\u0007Y\"ÔN'\u0095\u0082±\u000bÜ|ûÏú\"Þ¸³\u0000\u0097\u00adhxLß!µú7Þ\u009e³q\u0097ôh]Mg!¾ú\u0011Þý³H\u0097ÒhºMM!¸ú\u007fÞÕ³w\u0094>h\u0091M\u0014!ýúoÞÊ³¹\u0094\u0007hòMt!ßú¦ß<³\u0081\u0094QhóMT&*ú¸ß\u0017³È\u0094|hÁM¢&\u0017ú\u009eßy³Ú\u0000M$÷ITm\u008c\u00929¶\u009aÛí\u0000l$ÕI\u0007m¸ÒAöû\u009bX¿\u0080@5d\u0096\táÒ`öÙ\u009b\u000b¿´@2em\táÒLö£\u009b\u0002¿\u009f@òL*h\u0090\u00053!ëÞ^úý\u0097\u008aL\u000bh²\u0005`!ßÞYû\u0000\u0097\u0098L7hÈ\u0005u9ú\u001d@pãT;«\u008e\u008f-âZ9Û\u001dbp°T\u000f«\u008c\u008eÒâY9ïçxÃÂ®a\u008a¹u\fQ¯<ØçYÃà®2\u008a\u008du\u0011PT<Îçv\u0000c$ùIAmì\u00929¶\u009eÛô\u0000v$ßI0mµ\u0092\u001c·&Ûó\u0000Q$®I\tm\u0097\u0092ø·KÛ×\u0000 $ÊI\u0014nq\u0092Ò·UÛ¤\u0000\r$¿IðnY\u0092î·\u001bÛ\u008d\u0000ú%VIÏn0\u0092³·\u0006Üc\u0000Ý%VI\u009en7\u0092\u0091·ýG\u0011c«\u000e\b*ÐÕeñÆ\u009c±G0c\u0089\u000e[*äÕxð=\u009c§G\u001fcÔ\u000eU*ÄÕ´ð\u001b\u009c\u0096\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$þI'm¨\u0092\u001b·~Ûû\u0000u$®\u00adÚ\u0089}äÇÀ\u0015?¬\u001b\u0003vv\u00adï\u0089eä¼À3?\u0080\u001aåv`\u00adî\u00895ä¾À\u001b?r\u001a×vW\u00ad\u0099\u0089\u0016ä\u0092Ãÿ?X\u001aÉv,\u00ad\u0081\u0000A$æI\\m\u008e\u00927¶\u0098Ûí\u0000t$þI'm¨\u0092\u001b·~Ûû\u0000u$®I3m\u0093\u0092þ·TÛÑ\u0000-$\u0081aqEÖ(l\f¾ó\u0007×¨ºÝaDEÍ(\u0013\f\u0088ó+ÖYºøamE\u009f('_\u008a{-\u0016\u00972EÍüéS\u0084&_¿{-\u0016ì2dÍÍè\u008e\u00840_\u009b{h\u0016Ê2kÍ.è\u008c\u0084\u0004 ö\u0084QéëÍ92\u0080\u0016/{Z Ã\u0084Ié\u0090Í\u001f2¬\u0017É{L Â\u0084\u0019é\u009eÍ,2K\u0017ù\u0000V$ÓI~m\u0091\u0092\u0011¶¡ÛÊ¨ì\u008cxáúÅ+:¶\u001e8s\u0018¨õ\u008c)á¨Å\n:ä\n\u000f.\u008fC$gÿ\u0098@¼ÑÑ\u0094\n\u000f.¯CQgì\u0098g½\u0007Ñ\u0096\n-.ØCygø\u001bO?ÏRdv¿\u0089\u0000\u00ad\u0084ÀÑ\u001bB?éR\u0015v°\u0089\"¬UÀÛ\u001bj?\u0097R?v¡\u0089ü¬wÀ÷\u001b\u0006?½R(uI\u0089è¨ \u008c á\u000bÅÐ:o\u001eùs¾¨:\u008c\u0093áyÅî:X\u001f\u0017s¤¨\u0014\u008cíáVÅË:º\u001f\u0003\u0000g$óIXm\u0083\u0092<¶¸Ûí\u0000\u007f$ÇI\u0005m³\u0092\u001c·|Ûì\u0000[$¦I\fm\u0093\u0092þ\u0000g$óIXm\u0083\u0092<¶§Ûà\u0000T$ÅI+m¾\u0092\u0017·z\u001bù?mRÆv\u000f\u0089¯\u00ad\nÀ\u007f\u0000g$óIXm\u0096\u0092!¶\u009eÛáïmËù¦R\u0082\u0092}=Y\u008a4ëïYËÞJ2n¦\u0003\r'ÔØ\u007füÞ\u0091°J;n\u008c\u0003e'ìØný9S2w¾\u001a!>ðÁgåÐ\u0088°S\u0000w\u008fÕ#ñ¯\u009c$¸éG|cÊ\u000e«Õ\"i¨M$ ¤\u0004mûúßJ²+i¯M\u0018 ñ\u0004tûÉÞ¬²;i´Mo%ì\u0001xlÓH\b·£\u0093\u0015þC%þ\u0001Ml¤H9·»\u0092ñþz%Þ\u0001%l\u0088H\u001c·t\u0092Ýþ~%¤\u0001\u0001l\u0090Kü·H\u0092Åù\u0094Ý\u0015°\u00ad\u0094MkÍO|\"\u0007ù\u008eÝ\u0017°Ð\u0094JkØN\u0081\"\u000eù»ÝB°Ä\u0094bk\u0005N¥\":ùËÝc°ï\u0097\u0082k\u0012N¿\"WùëÝq°\u0004\u0097©kT\u0000u$øI^m§\u0092?¶\u0087Û÷\u0000n$ÕI4m\u009d\u0092\u0002·xÛÒ\u0000[$¼I\tm\u0098\u0092Î·PÛ×\u0000/$\u0080I\u0019nq\u0092Õ·HÛ\u0080\u0000\r$\u009dIñnC\u0092¶·3Û\u009e\u0000g$óIXm\u0083\u0092(¶\u009eÛÈ\u0000u$ÆI/m²\u00921·gÛó\u0000Y$¿I\u000em\u009f\u0092ï·CÛÌ\u0000!$\u0096I7nu\u0092Õ·OÛ³\u0000\u000f$\u009bIÐnK\u0092´·7\u0094q°áÝLù³\u00069\"\u009eOï\u0094z°×Ý\u0010ù±\u00061#zOì\u0094z°§Ý\u0014ù\u009d\u0006à#cOÕ\u0094!°\u008bÝ\rú|\u0006Í#]O±\u0094\u001e°\u0093Ýä\u0000g$óIXm\u008c\u00929¶\u009aÛí\u0000l$ÕI\u0007m¸\u0092?·iÛ÷\u0000Z$\u0083I\rm\u0097\u0092ë·GÛí\u0000<$\u008d\u0000s$óIXm\u008c\u00929¶\u009aÛí\u0000l$ÕI\u0007m¸\u00927·~Ûû\u0000Z$¾I,m\u009f\u0092ÿ·VÛÝ\u0000 $\u0081I\b_¡{5\u0016\u009e2JÍÿé\\\u0084+_ª{\u0013\u0016Á2~Íýè\u00ad\u00847_\u009c{Y\u0016Ô2Y".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 2053);
        t = cArr;
        u = -3940679414503889770L;
    }

    public be(String str) {
        super(str);
    }

    private static void A(AppLovinBroadcastManager appLovinBroadcastManager, AppLovinBroadcastManager.Receiver receiver, IntentFilter intentFilter) {
        int i2 = w + 27;
        v = i2 % 128;
        int i3 = i2 % 2;
        appLovinBroadcastManager.registerReceiver(receiver, intentFilter);
        int i4 = w + 21;
        v = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ void B(be beVar, Context context, String str, String str2) {
        int i2 = w + 69;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        beVar.w(context, str, str2);
        if (z) {
        } else {
            throw null;
        }
    }

    static /* synthetic */ boolean C(be beVar, AppLovinAd appLovinAd) {
        int i2 = v + 97;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 23 : ',') == ',') {
            return l(appLovinAd);
        }
        l(appLovinAd);
        throw null;
    }

    static /* synthetic */ long D(AppLovinAd appLovinAd) {
        int i2 = v + 63;
        w = i2 % 128;
        int i3 = i2 % 2;
        long jR = r(appLovinAd);
        int i4 = w + 87;
        v = i4 % 128;
        int i5 = i4 % 2;
        return jR;
    }

    private static AdViewController E(AppLovinAdView appLovinAdView) {
        int i2 = v + 123;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? 'I' : (char) 17) == 'I') {
            appLovinAdView.getAdViewController();
            throw null;
        }
        AdViewController adViewController = appLovinAdView.getAdViewController();
        int i3 = w + 109;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? 'U' : ']') != 'U') {
            return adViewController;
        }
        int i4 = 34 / 0;
        return adViewController;
    }

    static /* synthetic */ void F(AppLovinNativeAdImpl appLovinNativeAdImpl, AppLovinNativeAdEventListener appLovinNativeAdEventListener) {
        int i2 = w + 29;
        v = i2 % 128;
        int i3 = i2 % 2;
        Y(appLovinNativeAdImpl, appLovinNativeAdEventListener);
        int i4 = w + 115;
        v = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return;
        }
        int i5 = 16 / 0;
    }

    private static Uri G(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        int i2 = v + 37;
        w = i2 % 128;
        int i3 = i2 % 2;
        Uri mainImageUri = appLovinNativeAdImpl.getMainImageUri();
        int i4 = w + 111;
        v = i4 % 128;
        int i5 = i4 % 2;
        return mainImageUri;
    }

    static /* synthetic */ String H(AppLovinAd appLovinAd) {
        int i2 = v + 65;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '\\' : '/') != '\\') {
            return p(appLovinAd);
        }
        p(appLovinAd);
        throw null;
    }

    private static void I(AdViewController adViewController, AppLovinAdDisplayListener appLovinAdDisplayListener) {
        int i2 = v + 69;
        w = i2 % 128;
        int i3 = i2 % 2;
        adViewController.setAdDisplayListener(appLovinAdDisplayListener);
        int i4 = w + 17;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '(' : (char) 6) != '(') {
            return;
        }
        int i5 = 50 / 0;
    }

    static /* synthetic */ void J(AppLovinBroadcastManager appLovinBroadcastManager, AppLovinBroadcastManager.Receiver receiver, IntentFilter intentFilter) {
        int i2 = v + 15;
        w = i2 % 128;
        int i3 = i2 % 2;
        A(appLovinBroadcastManager, receiver, intentFilter);
        int i4 = v + 91;
        w = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ Uri K(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        int i2 = v + 15;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? (char) 7 : '\\') == '\\') {
            return G(appLovinNativeAdImpl);
        }
        G(appLovinNativeAdImpl);
        throw null;
    }

    private static Bundle L(CommunicatorMessageImpl communicatorMessageImpl) {
        int i2 = w + 1;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? '<' : 'J') != 'J') {
            communicatorMessageImpl.getMessageData();
            throw null;
        }
        Bundle messageData = communicatorMessageImpl.getMessageData();
        int i3 = v + 3;
        w = i3 % 128;
        if (i3 % 2 != 0) {
            return messageData;
        }
        throw null;
    }

    private static AppLovinBroadcastManager M(Context context) {
        int i2 = v + 39;
        w = i2 % 128;
        if (!(i2 % 2 != 0)) {
            AppLovinBroadcastManager.getInstance(context);
            throw null;
        }
        AppLovinBroadcastManager appLovinBroadcastManager = AppLovinBroadcastManager.getInstance(context);
        int i3 = w + 125;
        v = i3 % 128;
        if ((i3 % 2 != 0 ? 'S' : 'Q') == 'Q') {
            return appLovinBroadcastManager;
        }
        throw null;
    }

    static /* synthetic */ String N(MaxAd maxAd) {
        int i2 = v + 125;
        w = i2 % 128;
        int i3 = i2 % 2;
        String strV = V(maxAd);
        int i4 = w + 27;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 19 : 'M') != 19) {
            return strV;
        }
        throw null;
    }

    static /* synthetic */ void O(AppLovinInterstitialAdDialog appLovinInterstitialAdDialog, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        int i2 = w + 1;
        v = i2 % 128;
        int i3 = i2 % 2;
        y(appLovinInterstitialAdDialog, appLovinAdVideoPlaybackListener);
        int i4 = w + 49;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '5' : (char) 24) != '5') {
        } else {
            throw null;
        }
    }

    static /* synthetic */ void P(AppLovinBroadcastManager appLovinBroadcastManager, AppLovinBroadcastManager.Receiver receiver) {
        int i2 = v + 49;
        w = i2 % 128;
        boolean z = i2 % 2 != 0;
        z(appLovinBroadcastManager, receiver);
        if (!z) {
            int i3 = 73 / 0;
        }
        int i4 = v + 7;
        w = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ boolean Q(AppLovinAd appLovinAd) {
        int i2 = w + 61;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? 'Q' : 'a') == 'a') {
            return k(appLovinAd);
        }
        k(appLovinAd);
        throw null;
    }

    static /* synthetic */ Uri R(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        int i2 = w + 9;
        v = i2 % 128;
        int i3 = i2 % 2;
        Uri uriS = s(appLovinNativeAdImpl);
        int i4 = v + 29;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? '\t' : '!') != '\t') {
            return uriS;
        }
        throw null;
    }

    static /* synthetic */ AdViewController S(AppLovinAdView appLovinAdView) {
        int i2 = v + 91;
        w = i2 % 128;
        int i3 = i2 % 2;
        AdViewController adViewControllerE = E(appLovinAdView);
        int i4 = w + 77;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? '\b' : 'V') != '\b') {
            return adViewControllerE;
        }
        throw null;
    }

    static /* synthetic */ AppLovinBroadcastManager T(Context context) {
        int i2 = v + 33;
        w = i2 % 128;
        boolean z = i2 % 2 != 0;
        AppLovinBroadcastManager appLovinBroadcastManagerM = M(context);
        if (!z) {
            int i3 = 6 / 0;
        }
        return appLovinBroadcastManagerM;
    }

    static /* synthetic */ AppLovinAdType U(AppLovinAd appLovinAd) {
        int i2 = v + 7;
        w = i2 % 128;
        if ((i2 % 2 == 0 ? '^' : 'B') == 'B') {
            return q(appLovinAd);
        }
        q(appLovinAd);
        throw null;
    }

    private static String V(MaxAd maxAd) {
        int i2 = v + 117;
        w = i2 % 128;
        int i3 = i2 % 2;
        String creativeId = maxAd.getCreativeId();
        int i4 = w + 59;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 30 : '\"') != 30) {
            return creativeId;
        }
        throw null;
    }

    static /* synthetic */ void W(AdViewController adViewController, AppLovinAdDisplayListener appLovinAdDisplayListener) {
        int i2 = v + 79;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        I(adViewController, appLovinAdDisplayListener);
        if (z) {
            int i3 = 1 / 0;
        }
        int i4 = w + 51;
        v = i4 % 128;
        int i5 = i4 % 2;
    }

    static /* synthetic */ void X(AppLovinInterstitialAdDialog appLovinInterstitialAdDialog, AppLovinAdClickListener appLovinAdClickListener) {
        int i2 = v + 71;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? 'V' : '>';
        x(appLovinInterstitialAdDialog, appLovinAdClickListener);
        if (c2 == '>') {
        } else {
            throw null;
        }
    }

    private static void Y(AppLovinNativeAdImpl appLovinNativeAdImpl, AppLovinNativeAdEventListener appLovinNativeAdEventListener) {
        int i2 = v + 51;
        w = i2 % 128;
        int i3 = i2 % 2;
        appLovinNativeAdImpl.setEventListener(appLovinNativeAdEventListener);
        int i4 = v + 39;
        w = i4 % 128;
        int i5 = i4 % 2;
    }

    private static boolean k(AppLovinAd appLovinAd) {
        int i2 = w + 5;
        v = i2 % 128;
        if ((i2 % 2 != 0 ? (char) 3 : 'K') == 'K') {
            return appLovinAd.isVideoAd();
        }
        appLovinAd.isVideoAd();
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean l(com.applovin.sdk.AppLovinAd r5) {
        /*
            r0 = 0
            r1 = 1
            if (r5 == 0) goto L6
            r2 = 1
            goto L7
        L6:
            r2 = 0
        L7:
            if (r2 == r1) goto La
            goto L5a
        La:
            int r2 = com.json.adqualitysdk.sdk.i.be.w
            int r2 = r2 + 31
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.be.v = r3
            int r2 = r2 % 2
            if (r2 == 0) goto L2c
            com.applovin.sdk.AppLovinAdSize r2 = o(r5)
            com.applovin.sdk.AppLovinAdSize r3 = com.applovin.sdk.AppLovinAdSize.BANNER
            r4 = 7
            int r4 = r4 / r0
            r4 = 59
            if (r2 == r3) goto L25
            r2 = 85
            goto L27
        L25:
            r2 = 59
        L27:
            if (r2 == r4) goto L64
            goto L34
        L2a:
            r5 = move-exception
            throw r5
        L2c:
            com.applovin.sdk.AppLovinAdSize r2 = o(r5)
            com.applovin.sdk.AppLovinAdSize r3 = com.applovin.sdk.AppLovinAdSize.BANNER
            if (r2 == r3) goto L64
        L34:
            int r2 = com.json.adqualitysdk.sdk.i.be.w
            int r2 = r2 + 67
            int r3 = r2 % 128
            com.json.adqualitysdk.sdk.i.be.v = r3
            int r2 = r2 % 2
            if (r2 != 0) goto L5b
            com.applovin.sdk.AppLovinAdSize r2 = o(r5)
            com.applovin.sdk.AppLovinAdSize r3 = com.applovin.sdk.AppLovinAdSize.LEADER
            if (r2 == r3) goto L4a
            r2 = 0
            goto L4b
        L4a:
            r2 = 1
        L4b:
            if (r2 == r1) goto L64
            com.applovin.sdk.AppLovinAdSize r5 = o(r5)
            com.applovin.sdk.AppLovinAdSize r2 = com.applovin.sdk.AppLovinAdSize.MREC
            if (r5 != r2) goto L57
            r5 = 1
            goto L58
        L57:
            r5 = 0
        L58:
            if (r5 == r1) goto L64
        L5a:
            return r0
        L5b:
            o(r5)
            com.applovin.sdk.AppLovinAdSize r5 = com.applovin.sdk.AppLovinAdSize.LEADER
            r5 = 0
            throw r5     // Catch: java.lang.Throwable -> L62
        L62:
            r5 = move-exception
            throw r5
        L64:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.be.l(com.applovin.sdk.AppLovinAd):boolean");
    }

    private static boolean m(AppLovinAd appLovinAd) {
        int i2 = w + 91;
        v = i2 % 128;
        if (i2 % 2 != 0) {
            throw null;
        }
        if (appLovinAd != null) {
            if (appLovinAd.getType().equals(AppLovinAdType.INCENTIVIZED)) {
                int i3 = v + 33;
                w = i3 % 128;
                int i4 = i3 % 2;
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean n(AppLovinAd appLovinAd) {
        int i2 = w + 43;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        boolean zM = m(appLovinAd);
        if (!z) {
            int i3 = 34 / 0;
        }
        return zM;
    }

    private static AppLovinAdSize o(AppLovinAd appLovinAd) {
        int i2 = w + 51;
        v = i2 % 128;
        boolean z = i2 % 2 == 0;
        AppLovinAdSize size = appLovinAd.getSize();
        if (!z) {
            int i3 = 21 / 0;
        }
        int i4 = v + 37;
        w = i4 % 128;
        int i5 = i4 % 2;
        return size;
    }

    private static String p(AppLovinAd appLovinAd) {
        int i2 = v + 5;
        w = i2 % 128;
        int i3 = i2 % 2;
        String zoneId = appLovinAd.getZoneId();
        int i4 = w + 55;
        v = i4 % 128;
        if (!(i4 % 2 != 0)) {
            return zoneId;
        }
        int i5 = 76 / 0;
        return zoneId;
    }

    private static AppLovinAdType q(AppLovinAd appLovinAd) {
        int i2 = v + 95;
        w = i2 % 128;
        boolean z = i2 % 2 == 0;
        AppLovinAdType type = appLovinAd.getType();
        if (z) {
            int i3 = 2 / 0;
        }
        return type;
    }

    private static long r(AppLovinAd appLovinAd) {
        int i2 = w + 23;
        v = i2 % 128;
        int i3 = i2 % 2;
        long adIdNumber = appLovinAd.getAdIdNumber();
        int i4 = w + 69;
        v = i4 % 128;
        int i5 = i4 % 2;
        return adIdNumber;
    }

    private static Uri s(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        int i2 = w + 89;
        v = i2 % 128;
        int i3 = i2 % 2;
        Uri iconUri = appLovinNativeAdImpl.getIconUri();
        int i4 = w + 105;
        v = i4 % 128;
        if ((i4 % 2 != 0 ? 'T' : 'P') != 'T') {
            return iconUri;
        }
        throw null;
    }

    static /* synthetic */ Bundle t(CommunicatorMessageImpl communicatorMessageImpl) {
        int i2 = v + 115;
        w = i2 % 128;
        int i3 = i2 % 2;
        Bundle bundleL = L(communicatorMessageImpl);
        int i4 = w + 49;
        v = i4 % 128;
        if (i4 % 2 == 0) {
            return bundleL;
        }
        throw null;
    }

    static /* synthetic */ AppLovinAdSize u(AppLovinAd appLovinAd) {
        int i2 = v + 37;
        w = i2 % 128;
        char c2 = i2 % 2 == 0 ? (char) 1 : ',';
        AppLovinAdSize appLovinAdSizeO = o(appLovinAd);
        if (c2 != ',') {
            int i3 = 54 / 0;
        }
        return appLovinAdSizeO;
    }

    private static String v(int i2, int i3, char c2) {
        String str;
        synchronized (com.json.adqualitysdk.sdk.i.e.f50) {
            char[] cArr = new char[i2];
            com.json.adqualitysdk.sdk.i.e.f51 = 0;
            while (true) {
                int i4 = com.json.adqualitysdk.sdk.i.e.f51;
                if (i4 < i2) {
                    cArr[i4] = (char) ((((long) t[i3 + i4]) ^ (((long) i4) * u)) ^ ((long) c2));
                    com.json.adqualitysdk.sdk.i.e.f51 = i4 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    private void w(Context context, String str, String str2) {
        AppLovinCommunicator.getInstance(context).subscribe(new e(str), str2);
        int i2 = v + 97;
        w = i2 % 128;
        int i3 = i2 % 2;
    }

    private static void x(AppLovinInterstitialAdDialog appLovinInterstitialAdDialog, AppLovinAdClickListener appLovinAdClickListener) {
        int i2 = v + 43;
        w = i2 % 128;
        boolean z = i2 % 2 != 0;
        appLovinInterstitialAdDialog.setAdClickListener(appLovinAdClickListener);
        if (!z) {
            int i3 = 75 / 0;
        }
    }

    private static void y(AppLovinInterstitialAdDialog appLovinInterstitialAdDialog, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        int i2 = v + 25;
        w = i2 % 128;
        int i3 = i2 % 2;
        appLovinInterstitialAdDialog.setAdVideoPlaybackListener(appLovinAdVideoPlaybackListener);
        int i4 = v + 77;
        w = i4 % 128;
        if ((i4 % 2 == 0 ? (char) 26 : (char) 22) != 26) {
        } else {
            throw null;
        }
    }

    private static void z(AppLovinBroadcastManager appLovinBroadcastManager, AppLovinBroadcastManager.Receiver receiver) {
        int i2 = v + 105;
        w = i2 % 128;
        int i3 = i2 % 2;
        appLovinBroadcastManager.unregisterReceiver(receiver);
        int i4 = w + 21;
        v = i4 % 128;
        if (i4 % 2 == 0) {
        } else {
            throw null;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    final Map<String, az.d> j() {
        HashMap map = new HashMap();
        map.put(v(18 - (ViewConfiguration.getJumpTapTimeout() >> 16), Drawable.resolveOpacity(0, 0) + 1663, (char) (TextUtils.lastIndexOf("", '0') + 2685)).intern(), new p());
        map.put(v(26 - (ViewConfiguration.getScrollDefaultDelay() >> 16), 1680 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (char) (TextUtils.indexOf("", "", 0, 0) + 6972)).intern(), new d());
        map.put(v(20 - TextUtils.indexOf("", "", 0, 0), 1707 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) ((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 43091)).intern(), new b());
        map.put(v(18 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), TextUtils.indexOf((CharSequence) "", '0', 0) + 1728, (char) (ViewConfiguration.getPressedStateDuration() >> 16)).intern(), new h());
        map.put(v((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 13, (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1746, (char) TextUtils.indexOf("", "", 0)).intern(), new i());
        map.put(v(7 - Color.green(0), 1759 - ((Process.getThreadPriority(0) + 20) >> 6), (char) (7070 - View.combineMeasuredStates(0, 0))).intern(), new j());
        map.put(v((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 6, 1767 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern(), new l());
        map.put(v(8 - Process.getGidForName(""), ((Process.getThreadPriority(0) + 20) >> 6) + 1773, (char) (61194 - View.combineMeasuredStates(0, 0))).intern(), new g());
        map.put(v((ViewConfiguration.getTouchSlop() >> 8) + 13, 1783 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (char) ((ViewConfiguration.getEdgeSlop() >> 16) + 19029)).intern(), new m());
        map.put(v(TextUtils.indexOf("", "", 0, 0) + 9, 1794 - ((byte) KeyEvent.getModifierMetaStateMask()), (char) (21338 - ExpandableListView.getPackedPositionChild(0L))).intern(), new k());
        map.put(v((ViewConfiguration.getLongPressTimeout() >> 16) + 8, Color.blue(0) + 1804, (char) (Color.green(0) + 54602)).intern(), new q());
        map.put(v((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 15, 1812 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (27074 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern(), new n());
        map.put(v(TextUtils.getOffsetBefore("", 0) + 27, 1828 - KeyEvent.normalizeMetaState(0), (char) ((ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 9611)).intern(), new o());
        map.put(v(33 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 1854, (char) (63973 - TextUtils.lastIndexOf("", '0'))).intern(), new s());
        map.put(v(ExpandableListView.getPackedPositionGroup(0L) + 35, 1888 - ExpandableListView.getPackedPositionType(0L), (char) TextUtils.getOffsetBefore("", 0)).intern(), new t());
        map.put(v(TextUtils.lastIndexOf("", '0', 0) + 35, (ViewConfiguration.getPressedStateDuration() >> 16) + 1923, (char) Drawable.resolveOpacity(0, 0)).intern(), new a());
        map.put(v(((byte) KeyEvent.getModifierMetaStateMask()) + 32, ((byte) KeyEvent.getModifierMetaStateMask()) + 1958, (char) (37890 - TextUtils.getOffsetAfter("", 0))).intern(), new r());
        map.put(v(24 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), 1989 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (char) ExpandableListView.getPackedPositionType(0L)).intern(), new u());
        map.put(v(TextUtils.lastIndexOf("", '0', 0, 0) + 25, (Process.myTid() >> 22) + 2011, (char) (ViewConfiguration.getEdgeSlop() >> 16)).intern(), new c());
        map.put(v(18 - View.MeasureSpec.getSize(0), TextUtils.indexOf((CharSequence) "", '0', 0) + 2036, (char) (TextUtils.getOffsetBefore("", 0) + 24518)).intern(), new f());
        int i2 = w + 67;
        v = i2 % 128;
        int i3 = i2 % 2;
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0033  */
    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ｋ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class mo384(java.lang.String r22) {
        /*
            Method dump skipped, instruction units count: 3960
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.be.mo384(java.lang.String):java.lang.Class");
    }

    @Override // com.json.adqualitysdk.sdk.i.az
    /* JADX INFO: renamed from: ﾇ */
    public final String mo385() {
        int i2 = w + 111;
        v = i2 % 128;
        int i3 = i2 % 2;
        try {
            try {
                String str = (String) AppLovinSdk.class.getDeclaredField(v(TextUtils.indexOf((CharSequence) "", '0') + 8, (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 1643, (char) (Process.myTid() >> 22)).intern()).get(null);
                int i4 = v + 117;
                w = i4 % 128;
                int i5 = i4 % 2;
                return str;
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            return hq.m770().m771().m775(AppLovinSdk.class, v(Color.alpha(0) + 12, AndroidCharacter.getMirror('0') + 1603, (char) (TextUtils.getOffsetBefore("", 0) + 43186)).intern());
        }
    }
}
