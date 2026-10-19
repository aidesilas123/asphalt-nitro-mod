package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ImageFormat;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ExpandableListView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.exoplayer2.common.base.Ascii;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.ByteBuffer;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class dr {
    private static char[] a = null;
    private static long b = 0;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5563d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, Object> f5564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private dr f5565f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private dr f5566g;

    static {
        char[] cArr = new char[2766];
        ByteBuffer.wrap("\u0000V?ï\u007fn¾ÃþY=¤}8¼\u0087üP\u0000 ?à\u007fs¾Þþ\u0018= };¼\u0097ü\u001e;\u009a\u0092Ò\u00advíî,_lÜ¯*¯N\u0090íÐw\u0011ÎQZ\u0092³JÛuz5åôA´Óv\u008dI,\t²È\r\u0088\u0097\u00ad8\u0092\u0091Ò\u0005\u0013¨S=\u0090Ê\u0000C?æ\u007f}¾Øþk=£}%¼\u0097ü\u0015;\u0090{ï»\u007f\u0000B?÷\u007fh¾Ïþy=´}&¼\u0083ü\t;·{â»júÝ:By\u0097¹&ø\u00928\u000bw\u009d·çK t³42õ\u009dµ\u0016vÏ6C÷ð·cpÊ0\u009fð\u000f±ªq02Î\u0000S?ú\u007fn¾ÃþV=¡}\u0003¼\u0090ü\u0019;\u008a{é»h\u0000I?à\u007fl¾ßþL=\u0095} ¼\u0090ü\u0015;\u009f{á»HúÍ:Wy ¹7ø\u0092\u001a\u0019%\u008ee\u0000¤·ä$'÷gm¦Ôæ@!ÙVzií)cèÔ¨Ik\u0084+\u0016ê³ª9\u0000T?ë\u007fd¾Þþm=²}=¼\u008eü\u0003®\u0002\u0091 Ñ'\u0010\u0086P\u001f\u0093ìÓi\u0000P?ï\u007fh¾Þþ]=´}:~\u009cA?\u0001\u00adÀ\u0018\u0080\u0083Cy\u0003ä\u0000C?æ\u007f}¾ØþY=¥} ¼\u0087ü\u0002M\u0014r¡2>ó\u0099\u008fÕ°`ðõ1^qÊ\u0000I?à\u007fh¾Ïþ_=£}&Ò¤í\t\u00ad\u009al%\u0000F?â\u007fs¾ËþLAy~Ü>Tÿõ¿i|\u009e\u0000U?Ü\u007fU\u0000U?ü\u007fu\u009cY£Ðã\\\u0083¥¼\fü\u0080=\u000b}½¾SþÖ?k\u007fÓ¸oø\u00128\u0083y,¹¯úN:Ç{b\u0000V?ç\u007fx¾ÏþW=\u0090}=¼\u0087ü\u0007:3\u0005\u0095E\u0006\u0084½Ä'\u0007èGF\u0086ýÆw\u0001åA\u0080\u0000W?ë\u007f~¾üþQ=£}#\u0000F?ü\u007f}¾Çþ]=\u008a}5¼\u009bü\u001f;\u008b{ø\u0002¬=\u0006}\u0098¼(ü¸?a\u007fÄ¾sþá9ty\u0007hâWk\u0017çÖY\u0096êU\u0012\u0015\u008cÔ1\u0094¢S;ÞÂás¡í`I ëã £¯b\u0003\"\u0094\u0000I?ã\u007f}¾Íþ]=\u0090}=¼\u0087ü\u0007\u0099#¦\u009eæ\f'©g#¤×\u0000M?ï\u007fh¾ÂË¸ô\u0005´\u0097u25¸ös¶Äwh7ý\u0000L?ç\u007fo¾Þd\u0002[¥\u001b%Ú\u0088\u009a!Yé\u0019j½É\u0082qÂòqrNÕ\u000eUÏø\u008fOL\u009d\f\u001e\u008a×µuõö¡X\u009eäÞr\u001fÎ_\u007f\u009c¨Ü(\u001d\u0085]2\u009a\u0090Úó\u0000W?ë\u007f}¾Áþj=£}2¼\u0087ü\u0002;\u009b{â»yúÍ\u0000C?á\u007fr¾ÉþM=´}&¼\u0087ü\u001e;\u008a{Ä»{úÛ:^y\u0089¹3ø\u0090\u008f;°\u0092ð\u001a1½q$²ÀëeÔÜ\u0094UUé\u0015sÖ\u0084\u0000C?á\u007fp¾Æþ]=¥} ¼\u008bü\u001f;\u0090{ÿ\u0000E?ö\u007fy¾ÉþM=²};¼\u0090ü#;\u009b{þ»lúÁ:Uy¡\u0000B?ü\u007fs¾Ëþ\\=¥}5¼\u0091ü\u0004;¬{é»yúÍ:_y²¹7ø\u0092ó¢Ì\u000b\u008c\u0083M$\r½ÎY\u008eùO`\u000f÷Èa\u0088\u0002H\u0083\u0000P?ï\u007fn¾ËþU=£} ¼\u0087ü\u0002;\u0097{ö»\u007fúÌ:by½¹\"ø\u0085\u0000B?ï\u007fo¾Ïþ\u000e=ò_\u0014`¥ ;á\u009f\u0000C?â\u007f}¾ÙþK=\u008a};¼\u0083ü\u0014;\u009b{þ\u009c»£\u001eã\u0097\"9\u0000N?û\u007fq¾Èþ]=´\u0000A?í\u007fh¾ÃþN=¯} ¼\u009b\u0000S?ú\u007fn¾ÃþV=¡}\u0016¼\u0097ü\u0016;\u0098{é»h\u0000S?ú\u007fn¾ÃþV=¡}\u0016¼\u0097ü\u0019;\u0092{è»\u007fúÚ\u0000T?æ\u007fn¾ÏþY=¢\u0000V?á\u007fu¾Î\u0018ý'^gÅ¦f\u0000M?ë\u007fh¾ÂþW=¢\u0000R?ë\u007fz¾ÏþJ=£}:¼\u0081ü\u0015eüZQ\u001aÒÛc\u009b÷X\u001a\u0018\u008aÙ+\u0099\u0081^*\u001eBÞÓ\u0000A?ì\u007fo¾ÞþJ=§}7¼\u0096ü=;\u009f{üH\u0098w?7¢ö\u001e¶\u0084us5ö\u0000H?ï\u007fr¾ÎþT=£}&¼¶ü\u0018;\u008c{é»{úÌ\u0000L?á\u007f{\u0000S?û\u007fn¾ÌþY=¥}1¼´ü\u0019;\u009b{û\u0000T?ë\u007fd¾ÞþM=´}1¼´ü\u0019;\u009b{û\u0000G?ë\u007fo¾ÞþM=´}1¼¦ü\u0015;\u008a{é»yúÜ:Yy¶A0~\u0084>\u0012ÿ¹¿7|À<xýï½Tzø:\u009cú\r»¾{'8Âø}¹êy~6ëö\u008c¶\u0015w 7%}êBH\u0002ÛÃw\u0083ô@\u0017\u0000\u00893Q\fíLx\u008dïÍV\u000e²N=\u008f\u0089Ï\u0013\b»Hæ\u0088uÉË\t^J¶\u0000D?ç\u007f}¾ÆþW=¡:?\u0005\u0085E\u0004\u0084´Ä,\u0007ÚGC\u0086ï\u0000D?ç\u007f}¾ÆþW=¡}\u0012¼\u0090ü\u0011;\u0099{á»\u007fúÆ:B\u0082Õ½jýø<R|Å¿1ÿ¡>\u0002~\u008d¹\u0005ùv\u0000R?ë\u007fo¾ÅþM=´}7¼\u0087ü\u0003B\u0083}*=¢ü\u0005¼\u009c\u007fx?ÍþM¾ÔyP9#ù¢\u000bë4TtÎµcüÑÃz\u0083ïB\\\u0002ÀÁ?\u0081\u0085@\u0016\u0000\u009eÇ\u0017\u0000M?á\u007fh¾ÃþW=¨}\u0011¼\u0094ü\u0015;\u0090{ø\u0000M?á\u007fx¾Ãþ^=¯}1¼\u0090\u001fá Z`Ó¡gáñ\"\u0005b¶£-ã¿$2dI¤Ûåf&£\u0019\u0013Y\u0086\u0098:Ø£\u001bE_\u0015`¾ )á\u008e¡\u0018b÷\"rãà£MdÏ$¯\u0000A?ê\u007f}¾ÚþL=£}&Z\u0093e-%®ä\u0005¤\u0094gj'ÂæK¦ÕaI\u0000T?ë\u007fd¾Þþn=¯}1¼\u0095\u0000B?û\u007fh¾ÞþW=¨\u0000L?ç\u007fr¾ÏþY=´}\u0018¼\u0083ü\t;\u0091{ù»n\u008cV³ïót2ÏrH±«ñ&0\u0083p8·\u009b÷ñ7qvÙ¶F\u0000O?à\u007f_¾ÆþQ=¥}?¼®ü\u0019;\u008d{ø»\u007fúÆ:Sy¶ö\u0002É\u00ad\u0089\u001dH\u0086\b\fËä\u008blJÛ\n~ÍÛ\u008d M9\f\u0082Ì\u001e\u008fÅOv\u000eÞÎW\u0081ÔA©\u00010À\u0099ZpeÐ%^äö¤vg\u009c'\u001dæ½¦\u0006a¤!Ùá@ ô`h#\u008d»*\u0084\u0091Ä\u0018\u0005¬E:\u0086ÎÆm\u0007ìG}\u0080ðÀ\u0095\u0000\u0014A\u00ad\u0081>ÂÊ´½\u008b\u0011Ë\u0094\n!J°\u0089YÉÜ\baHþ\u008fvÏ,\u000f\u0096N+\u008eºÍN\rÚL\u007füåÃV\u0083ÙBi\u0002íÁ\u0012\u0081\u009b@0¼ \u0083$Ã\u0094\u0002/B½\u0081MÁÜ\u0000h@ò\u0087SÇ\u0000\u0007\u0090F.\u0086\u00adÅL\u0005ÏDf\u0084õ\u0000P?ü\u007fs¾ÒþA\u0000S?æ\u007f}¾Øþ]=¢}\u0004¼\u0090ü\u0015;\u0098{é»húÍ:Xy§¹7ø\u0093\u0000M?ë\u007fx¾ÃþY=²}=¼\u008dü\u001e;º{í»núÉÚ\u0085å9¥¬d.$\u0083çq§ñfs&ÎáE¡;a¦ \u000e\u0000W?ë\u007f~¾üþQ=£}#¼¡ü\u001c;\u0097{é»túÜ:ry¡¹1ø\u008f8\u001cw\u009d·þ÷w6Ô\u0000W?ë\u007f~¾éþP=´};¼\u008fü\u0015;½{à»súÍ:Xy°¹\u0016ø\u00858\rw\u0093·ø÷y6Òv[µ°\u0000A?ê\u007fj¾ÏþJ=²}=¼\u0091ü\u0015;\u008c{Å»túÎ:YÁùþF¾Ã\u007fq?öü\u0015¼\u0098}==\u0083ú*ºPzÏ-\u0019\u0012¦R#\u0093\u0091Ó\u0016\u0010õPx\u0091ÝÑc\u0016ÀV¥ÒÙí|\u00adól\\,Âï-\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;®{Ù»Xúä:\u007fy\u0087¥\u0082\u009a\u000eÚ\u0097\u001b,[±\u0098@ØÞ\u0019\u007fYà\u009eaÞ\u0011\u001e\u009c_1\u009f¸Ü_\u001cØ\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;®{Þ»Uúü:sy\u0087¹\u0006ø¥8*D3{¿;&ú\u009dº\u0000yñ9oøÎ¸Q\u007fÓ?¦ÿ%¾\u0082~\u0001=ù\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;¸{Å»Túé:z\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;\u00ad{Õ»Túë:~y\u0096¹\u001dø®8'w¦·Ï÷\\\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;¨{Ã»Vúé:by\u008d¹\u001eø¥\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;ª{Þ»[úæ:ey\u008d¹\u0017ø®8:\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;°{Í»Núá:`y\u0081\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;·{Â»Núí:dy\u0082¹\u0013ø£8+\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;¿{Î»Iúü:dy\u0085¹\u0011ø´\u0000M?Á\u007fX¾ãþ~=\u008f}\u0011¼°ü/;\u00ad{Ø»Húá:uy\u0090hsWð\u0017bÖ×\u0096LU¶\u0015+\u0003ë<n|õ½P\u0000b?÷\u007fh¾Ïù\u0004Æ\u0091\u0086\u0004G¯\u0007;\u0011A.Èn@\u0000l?á\u007fr¾Í\u0000f?â\u007fs¾ËþL\u0000d?á\u007fi¾ÈþT=£\u0000v?á\u007fu¾Î\u0000B?Û\u007fU¾æþ|=\u0099}\u0002¼§ü\";\u00ad{Å»Uúæ:iy\u0097¹\u0016ø«81wµ·Ä÷L?\u0099\u0000\b@\u0096\u00812Á¨\u0002_BÒ\u0083~Ãö\u0004sD\u000f\u0084\u0090\u0000V?Ç\u007fY¾ýþg=\u008f}\u001a¼´ü9;\u00ad{Å»Xúä:sLpsá3\u007fòÛ²Aq§1=ð\u008a°\u0013\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷\\6évcµ\u008cÎÈñD±Ípf0òó\r³\u008er\"2£õ>µGuË4rôò·\u0002w\u00836,ö¤¹7yP9ÈøsZ«e'%®ä\u0005¤\u0091gn'íæA¦Àa]!$á¨ \u0011`\u0091#aãà¢ObÇ-Tí3\u00ad³l\u000f,\u0084ïa\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷[6çvzµ\u0081õ\u00154\u0092\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷W6óv`µ\u0091õ\u00194\u009at)\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷H6év}µ\u008cõ\u00044\u009bt>³¥óÌ3Yró²|\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷H6év}µ\u008cõ\u00044\u009bt>³¥óÝ3F\u000e±1=q´°\u001fð\u008b3ts÷²[òÚ5Gu>µ²ô\u000b4\u008bw{·úöU6ÝyN¹)ù¬8\u0015x\u009e»{ûþ:}zÝ½Iý\"=¯\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷K6åvfµ\u008dõ\u001c4\u0092\r½21r¸³\u0013ó\u00870xpû±WñÖ6Kv2¶¾÷\u00077\u0087tw´öõY5ÑzBº%ú ;\u0019{\u0092¸wøò9qyÙ¾Dþ,>£\u007f\u0006ù\u0089Æ\u0005\u0086\u008cG'\u0007³ÄL\u0084ÏEc\u0005âÂ\u007f\u0082\u0006B\u008a\u00033Ã³\u0080C@Â\u0001mÁå\u008evN\u0011\u000e\u0094Ï-\u008f¦LC\fÆÍE\u008díJf\n\u0005Ê\u0086\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷Z6óv`µ\u0096õ\u001f4\u0090t3³ªóÚ3Sr÷²a\u0000M?Á\u007fH¾ãþw=\u0088}\u000b¼§ü&;»{Â»Nú÷:wy\u0087¹\u0006ø©8!w²·Õ÷Z6óv`µ\u0096õ\u001f4\u0090t3³¨óÍ3Zrá²sñ\u00931\u000b\u008f\"°¿ð>1\u0083q\u000b²þòx3ÀsN´Æô¢43u\u009bµ\u0014öä6gwÆ·]øÒ8¢x1\u008dc²þò\u007f3ÂsJ°¿ð91\u0081q\u000f¶\u0087öã6rwÚ·WÐìïq¯ðnM.Åí0\u00ad¶l\u000e,\u0080ë\b«ukÿ*FêÑ0å\u000fxOù\u008eDÎÌ\r9M¿\u008c\u0007Ì\u0089\u000b\u0001K~\u008bì\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{ß»Súþû>Ä£\u0084\"E\u009f\u0005\u0017Æâ\u0086dGÜ\u0007RÀÚ\u0080¶@%\u0001\u008cÁ\u0019\u0082æBy\u0003Þ\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Í»^ú÷:~y\u0085¹\u0001ø¨\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{È»Uú÷:xy\u008b¹\u0006ø¿8=w¹·Ä÷\\6ùvqµ\u0094õ\u00154\u0090t8K*t·46õ\u008bµ\u0003vö6p÷È·FpÎ0·ð<±\u008aq\u001c2øòi³ÎsL<ÃZkeö%wäÊ¤Bg·'1æ\u0089¦\u0007a\u008f!íáf Ï`_#£ã2¢\u008fb\f-\u008díñ\u00addlÄ\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Þ»_úì:\u007fy\u0096¹\u0017ø£8:\u008b\r´\u0090ô\u00115¬u$¶ÑöW7ïwa°éð\u00930\u0011q£±!òÜ2[sú³güù<\u0091\"x\u001då]d\u009cÙÜQ\u001f¤_\"\u009e\u009aÞ\u0014\u0019\u009cYæ\u0099dØÖ\u0018T[´\u009b*Ú\u008e\u001a\u0000U\u0080\u0095ðÕ`\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Û»Yúë:iy\u0089¹\u0017ø´8&w³·Î÷G6èvuµ\u008fõ\u0015\u0000W?Í\u007f_¾õþu=\u0083}\u0000¼ªü?;º{Ó»Uúæ:iy\u008e¹\u0001ø¿8>w®·Å÷U6öv`\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Á»Súû:ey\u008d¹\u001cø§81wµ·Ç÷H6ùvqµ\u009aõ\u00044\u008ct-³¥óÉ3Rrû²añ\u008f1\u001bp\u008e°)ï½/Õ\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Á»_úì:\u007fy\u009b¹\u0016ø¡8:w½}kBö\u0002wÃÊ\u0083B@·\u00001Á\u0089\u0081\u0007F\u008f\u0006ïÆq\u0087ÂGQ\u0004µÄ8\u0085\u008fE\u0014\n\u0093Êû\u008awKÌ\u000bEÈ¾\u0088;I¦\t\u0007Î\u009a\u008eóN}\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Á»_úì:\u007fy\u009b¹\u0016ø¡8:w½·Õ÷H6êvuµ\u0081õ\u00154\u0093t)³´óÜ3Irí²v\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Ï»Vúá:uy\u008f¹\røµ8<w°\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Ï»Vúá:uy\u008f¹\rø³8!w©·Ø÷[6ãµá\u008a|Êý\u000b@KÈ\u0088=È»\t\u0003I\u008d\u008e\u0005Îi\u000eúOZ\u008f×Ì2\f¢M\r\u008d\u0099Â\u001d\u0002|Bã\u0083KÃÔ\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Í»^úþ:sy\u0096¹\u0006ø©8=w¹·Ø÷G6ïvpµ\u009dõ\u00044\u0087t<³¿\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Í»^úþ:sy\u0096¹\u0006ø©8=w¹·Ø÷G6ïvpµ\u009dõ\u00034\u0091t9³¨óË3S\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{È»_úû:by\u008d¹\u001cø¡8:wµ·Å÷V6ùvaµ\u0090õ\u001c\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Ê»Súæ:wy\u0088¹\røµ8<w°\u0011\u009a.\u0007n\u0086¯;ï³,FlÀ\u00adxíö*~j\u0000ª\u008aë\"+»hX¨Èé`)äfq¦\u0019æ\u0098'5g¢¤NäÛ\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Ú»Súì:sy\u008b¹\røµ8<w°·Õ÷T6ïvgµ\u0096I7vª6+÷\u0096·\u001etë4mõÕµ[rÓ2·ò+³\u0095s\n0éðu±ÀqP>Ñþ´¾#\u007f\u0087?\u0012\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Å»Wúé:qy\u0081¹\røµ8<w°·Õ÷T6ïvgµ\u0096G\u001bx\u00868\u0007ùº¹2zÇ:Aûù»w|ÿ<\u0097ü\n½²}7>ÙþM¿ì\u007ft0ýð\u0081°\u0014q´15òÐ²GsÓ3fVÒiO)Îès¨ûk\u000e+\u0088ê0ª¾m6-Xíß¬zlà/\u0007ï\u008c®!n¼!4áI¡Ö`a æ*\u0018\u0015\u0085U\u0004\u0094¹Ô1\u0017ÄWB\u0096úÖt\u0011üQ\u0094\u0091\tÐ±\u00104SÚ\u0093NÒï\u0012w]þ\u009d\u0094Ý\u0017\u001c¾\\(\u009fËßD\u001eÕ^t\u0099øÙ\u0081\u0019\u0012X©\u0098*\u008aßµBõÃ4~tö·\u0003÷\u00856=v³±;ñU1Òpw°íó\n3\u0081r,²±ý9=E}Ð¼püý?\u0007\u007f\u0099¾\u000bþ£92yQ¹É\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Ï»Húí:wy\u0090¹\u001bø¶8+w£·Ã÷\\\u0006ë9vy÷¸JøÂ;7{±º\tú\u0087=\u000f}a½õüK<È\u007f+¿µþ\t>\u008eq\r±mñòÏÂð_°Þqc1ëò\u001e²\u0098s 3®ô&´LtÏ5`õä¶\u0013v\u008a7.÷\u00adÎëñv±÷pJ0Âó7³±r\t2\u0087õ\u000fµpuñ4WôÍ·/w¯6\u001aö\u009f¹\u001by`\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{Ï»Húí:wy\u0090¹\u001bø¶8+w£·Ë÷\\6ùv}µ\u0086æëÙv\u0099÷XJ\u0018ÂÛ7\u009b±Z\t\u001a\u0087Ý\u000f\u009dc]ð\u001cPÜÇ\u009f#_¸oxPå\u0010dÑÙ\u0091QR¤\u0012\"Ó\u009a\u0093\u0014T\u009c\u0014õÔt\u0095ÅUT\u0016·Ö*\u0097\u0089W\u0004\u0018\u008eØå\u0098nYÄ\u0019@Ú»\u0000E?Ø\u007fY¾äþl=\u0099}\u001f¼§ü);¡{È»Iúø:iy\u0087¹\u0000ø¥8/w¨·Ã÷N6ãvkµ\u008bõ\u0014û\u0090Ä\r\u0084\u008cE1\u0005¹ÆL\u0086ÊGr\u0007üÀt\u0080\u001d@\u009c\u0001-Á¼\u0082RBÆ\u0003xÃë\u008chL\u0016\f\u008aÍ=\u008d¾N^\u000eÁ".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 2766);
        a = cArr;
        b = 2433976123486584718L;
    }

    public dr() {
        this.f5564e = new HashMap();
        this.f5565f = null;
        this.f5566g = null;
    }

    public dr(dr drVar) {
        this(new HashMap(), drVar);
    }

    public dr(Map<String, Object> map, dr drVar) {
        this(map, drVar, drVar == null);
    }

    public dr(Map<String, Object> map, dr drVar, boolean z) {
        if (map != null) {
            this.f5564e = new HashMap(map);
        } else {
            this.f5564e = new HashMap();
        }
        this.f5565f = drVar;
        if (z || drVar == null) {
            this.f5566g = this;
        } else {
            this.f5566g = drVar.f5566g;
        }
    }

    private static String a(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static dr m681() {
        dr drVar = new dr();
        drVar.m686(a(6 - (ViewConfiguration.getWindowTouchSlop() >> 8), (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)) + 18, (char) (View.MeasureSpec.makeMeasureSpec(0, 0) + 37505)).intern(), System.class);
        drVar.m686(a(6 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), 25 - (Process.myPid() >> 22), (char) (TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 44802)).intern(), Object.class);
        drVar.m686(a(KeyEvent.keyCodeFromString("") + 5, (ViewConfiguration.getLongPressTimeout() >> 16) + 31, (char) (19096 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)))).intern(), Class.class);
        drVar.m686(a(Gravity.getAbsoluteGravity(0, 0) + 5, (ViewConfiguration.getTapTimeout() >> 16) + 36, (char) (30411 - (ViewConfiguration.getFadingEdgeLength() >> 16))).intern(), Field.class);
        drVar.m686(a((ViewConfiguration.getWindowTouchSlop() >> 8) + 6, KeyEvent.getDeadChar(0, 0) + 41, (char) (ExpandableListView.getPackedPositionType(0L) + 44395)).intern(), String.class);
        drVar.m686(a((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 12, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 47, (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), CharSequence.class);
        drVar.m686(a((ViewConfiguration.getEdgeSlop() >> 16) + 20, 59 - (ViewConfiguration.getScrollBarSize() >> 8), (char) Color.alpha(0)).intern(), ByteArrayInputStream.class);
        drVar.m686(a((Process.myPid() >> 22) + 15, 79 - (ViewConfiguration.getWindowTouchSlop() >> 8), (char) (19302 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)))).intern(), GZIPInputStream.class);
        drVar.m686(a(12 - (KeyEvent.getMaxKeyCode() >> 16), 94 - Color.green(0), (char) (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), StringWriter.class);
        drVar.m686(a(17 - TextUtils.getCapsMode("", 0, 0), 107 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (char) (ViewConfiguration.getEdgeSlop() >> 16)).intern(), InputStreamReader.class);
        drVar.m686(a(View.resolveSizeAndState(0, 0, 0) + 10, 123 - KeyEvent.getDeadChar(0, 0), (char) (6739 - (ViewConfiguration.getMinimumFlingVelocity() >> 16))).intern(), JSONObject.class);
        drVar.m686(a(10 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), 132 - Process.getGidForName(""), (char) (22065 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)))).intern(), JSONArray.class);
        drVar.m686(a(9 - Color.red(0), 142 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), TextUtils.class);
        drVar.m686(a((Process.myTid() >> 22) + 7, ExpandableListView.getPackedPositionChild(0L) + 152, (char) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 44623)).intern(), Matcher.class);
        drVar.m686(a((ViewConfiguration.getDoubleTapTimeout() >> 16) + 7, AndroidCharacter.getMirror('0') + 'n', (char) ((-1) - TextUtils.lastIndexOf("", '0', 0, 0))).intern(), Pattern.class);
        drVar.m686(a(7 - (ViewConfiguration.getTouchSlop() >> 8), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 165, (char) (TextUtils.getOffsetBefore("", 0) + 32478)).intern(), Boolean.class);
        drVar.m686(a((ViewConfiguration.getTouchSlop() >> 8) + 9, 171 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (KeyEvent.getMaxKeyCode() >> 16)).intern(), Character.class);
        drVar.m686(a(Gravity.getAbsoluteGravity(0, 0) + 4, 181 - (ViewConfiguration.getWindowTouchSlop() >> 8), (char) (TextUtils.indexOf("", "", 0, 0) + 19798)).intern(), Byte.class);
        drVar.m686(a(5 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), 184 - TextUtils.lastIndexOf("", '0', 0), (char) (TextUtils.indexOf("", "", 0) + 36742)).intern(), Short.class);
        drVar.m686(a(TextUtils.indexOf((CharSequence) "", '0', 0) + 8, TextUtils.lastIndexOf("", '0', 0, 0) + 191, (char) KeyEvent.keyCodeFromString("")).intern(), Integer.class);
        drVar.m686(a(4 - (Process.myTid() >> 22), 197 - KeyEvent.normalizeMetaState(0), (char) (KeyEvent.getDeadChar(0, 0) + 53992)).intern(), Long.class);
        drVar.m686(a((ViewConfiguration.getEdgeSlop() >> 16) + 5, TextUtils.lastIndexOf("", '0') + 202, (char) Color.red(0)).intern(), Float.class);
        drVar.m686(a(6 - ((Process.getThreadPriority(0) + 20) >> 6), (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 206, (char) (16701 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24))).intern(), Double.class);
        drVar.m686(a((SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)) + 2, TextUtils.lastIndexOf("", '0') + 213, (char) TextUtils.getTrimmedLength("")).intern(), URI.class);
        drVar.m686(a(TextUtils.indexOf((CharSequence) "", '0') + 4, 215 - (ViewConfiguration.getLongPressTimeout() >> 16), (char) View.MeasureSpec.getSize(0)).intern(), Uri.class);
        drVar.m686(a(3 - View.resolveSizeAndState(0, 0, 0), 218 - View.getDefaultSize(0, 0), (char) (View.combineMeasuredStates(0, 0) + 39948)).intern(), URL.class);
        drVar.m686(a(View.MeasureSpec.makeMeasureSpec(0, 0) + 17, (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 220, (char) (33776 - (ViewConfiguration.getScrollBarSize() >> 8))).intern(), UrlQuerySanitizer.class);
        drVar.m686(a(TextUtils.lastIndexOf("", '0', 0) + 10, (ViewConfiguration.getFadingEdgeLength() >> 16) + 238, (char) KeyEvent.getDeadChar(0, 0)).intern(), VideoView.class);
        drVar.m686(a(11 - View.getDefaultSize(0, 0), 247 - (ViewConfiguration.getJumpTapTimeout() >> 16), (char) (14974 - View.resolveSize(0, 0))).intern(), MediaPlayer.class);
        drVar.m686(a(ExpandableListView.getPackedPositionType(0L) + 7, (ViewConfiguration.getLongPressTimeout() >> 16) + 258, (char) ExpandableListView.getPackedPositionType(0L)).intern(), WebView.class);
        drVar.m686(a(11 - (Process.myTid() >> 22), View.getDefaultSize(0, 0) + 265, (char) Color.blue(0)).intern(), FrameLayout.class);
        drVar.m686(a(TextUtils.getOffsetAfter("", 0) + 11, TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 277, (char) (741 - TextUtils.indexOf("", ""))).intern(), ImageButton.class);
        drVar.m686(a(11 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), KeyEvent.getDeadChar(0, 0) + 287, (char) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 26806)).intern(), URLDecoder.class);
        drVar.m686(a((ViewConfiguration.getKeyRepeatDelay() >> 16) + 9, 297 - View.MeasureSpec.getMode(0), (char) (56981 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)))).intern(), ViewGroup.class);
        drVar.m686(a(8 - TextUtils.indexOf((CharSequence) "", '0', 0), 305 - ImageFormat.getBitsPerPixel(0), (char) (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1))).intern(), ImageView.class);
        drVar.m686(a(5 - ExpandableListView.getPackedPositionChild(0L), (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 314, (char) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 39265)).intern(), Arrays.class);
        drVar.m686(a(Color.blue(0) + 4, 320 - TextUtils.indexOf((CharSequence) "", '0'), (char) (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern(), Math.class);
        drVar.m686(a(Drawable.resolveOpacity(0, 0) + 9, 324 - Process.getGidForName(""), (char) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 52217)).intern(), ArrayList.class);
        drVar.m686(a(TextUtils.indexOf((CharSequence) "", '0', 0) + 5, View.combineMeasuredStates(0, 0) + 334, (char) (ViewConfiguration.getJumpTapTimeout() >> 16)).intern(), List.class);
        drVar.m686(a(8 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), 337 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) (25675 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)))).intern(), HashSet.class);
        drVar.m686(a(3 - (ViewConfiguration.getTapTimeout() >> 16), 345 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) (View.MeasureSpec.getMode(0) + 48538)).intern(), Set.class);
        drVar.m686(a(7 - View.resolveSizeAndState(0, 0, 0), (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 347, (char) (View.resolveSize(0, 0) + 28986)).intern(), HashMap.class);
        drVar.m686(a(TextUtils.lastIndexOf("", '0') + 4, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 355, (char) ((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 35482)).intern(), Map.class);
        drVar.m686(a(11 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), AndroidCharacter.getMirror('0') + 310, (char) ((ViewConfiguration.getEdgeSlop() >> 16) + 41231)).intern(), WeakHashMap.class);
        drVar.m686(a(13 - TextUtils.indexOf("", "", 0), 369 - ExpandableListView.getPackedPositionGroup(0L), (char) (ViewConfiguration.getPressedStateDuration() >> 16)).intern(), WeakReference.class);
        drVar.m686(a(18 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), ((byte) KeyEvent.getModifierMetaStateMask()) + Ascii.DEL, (char) View.combineMeasuredStates(0, 0)).intern(), ConcurrentHashMap.class);
        drVar.m686(a((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 6, View.combineMeasuredStates(0, 0) + 399, (char) (36722 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)))).intern(), Intent.class);
        drVar.m686(a((-16777210) - Color.rgb(0, 0, 0), (-16776811) - Color.rgb(0, 0, 0), (char) (60199 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)))).intern(), Bundle.class);
        drVar.m686(a((ViewConfiguration.getScrollBarFadeDuration() >> 16) + 10, 286 - ExpandableListView.getPackedPositionChild(0L), (char) (26806 - TextUtils.indexOf((CharSequence) "", '0', 0))).intern(), URLDecoder.class);
        drVar.m686(a(11 - Color.blue(0), 411 - TextUtils.getOffsetBefore("", 0), (char) (ViewConfiguration.getJumpTapTimeout() >> 16)).intern(), Collections.class);
        drVar.m686(a(15 - ExpandableListView.getPackedPositionType(0L), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, (char) TextUtils.indexOf("", "", 0, 0)).intern(), ExecutorService.class);
        drVar.m686(a((ViewConfiguration.getKeyRepeatDelay() >> 16) + 17, (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 437, (char) (Process.myTid() >> 22)).intern(), BroadcastReceiver.class);
        drVar.m686(a((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 12, ExpandableListView.getPackedPositionChild(0L) + 455, (char) (Color.argb(0, 0, 0, 0) + 62443)).intern(), IntentFilter.class);
        drVar.m686(a(ExpandableListView.getPackedPositionChild(0L) + 18, 466 - Gravity.getAbsoluteGravity(0, 0), (char) (TextUtils.indexOf((CharSequence) "", '0') + 1)).intern(), ParameterizedType.class);
        drVar.m686(a(6 - (ViewConfiguration.getWindowTouchSlop() >> 8), 482 - TextUtils.indexOf((CharSequence) "", '0', 0), (char) TextUtils.getTrimmedLength("")).intern(), Base64.class);
        drVar.m686(a(MotionEvent.axisFromString("") + 5, Color.blue(0) + 489, (char) (24386 - (ViewConfiguration.getFadingEdgeLength() >> 16))).intern(), View.class);
        drVar.m686(a(TextUtils.indexOf("", "", 0, 0) + 11, 494 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0, 0))).intern(), ClassLoader.class);
        drVar.m686(a(ImageFormat.getBitsPerPixel(0) + 5, Color.red(0) + TypedValues.PositionType.TYPE_PERCENT_HEIGHT, (char) (40189 - TextUtils.lastIndexOf("", '0'))).intern(), Enum.class);
        drVar.m686(a(6 - (Process.myTid() >> 22), TextUtils.getOffsetBefore("", 0) + 508, (char) Color.green(0)).intern(), Number.class);
        drVar.m686(a(View.MeasureSpec.getSize(0) + 8, Color.green(0) + IronSourceConstants.INIT_COMPLETE, (char) (TextUtils.indexOf((CharSequence) "", '0', 0) + 1)).intern(), Activity.class);
        drVar.m686(a(11 - TextUtils.indexOf((CharSequence) "", '0', 0), KeyEvent.normalizeMetaState(0) + 522, (char) (Process.myPid() >> 22)).intern(), StringBuffer.class);
        drVar.m686(a(MotionEvent.axisFromString("") + 14, (ViewConfiguration.getTouchSlop() >> 8) + 534, (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), StringBuilder.class);
        drVar.m686(a(View.MeasureSpec.getMode(0) + 6, 547 - ExpandableListView.getPackedPositionGroup(0L), (char) (1 - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)))).intern(), Thread.class);
        drVar.m686(a(4 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), 553 - Color.green(0), (char) ((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) - 1)).intern(), Void.class);
        drVar.m686(a((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 4, 558 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (char) ((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 6313)).intern(), Type.class);
        drVar.m686(a(6 - View.MeasureSpec.makeMeasureSpec(0, 0), TextUtils.indexOf((CharSequence) "", '0', 0) + TTAdConstant.STYLE_SIZE_RADIO_9_16, (char) TextUtils.getTrimmedLength("")).intern(), dn.class);
        drVar.m686(a(AndroidCharacter.getMirror('0') - '\'', TextUtils.lastIndexOf("", '0', 0) + 568, (char) (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), Reference.class);
        drVar.m686(a(12 - (ViewConfiguration.getScrollBarFadeDuration() >> 16), 576 - Color.argb(0, 0, 0, 0), (char) ((KeyEvent.getMaxKeyCode() >> 16) + 26045)).intern(), AbstractList.class);
        drVar.m686(a(12 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), 588 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (char) (ViewConfiguration.getScrollBarSize() >> 8)).intern(), AbstractMap.class);
        drVar.m686(a((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 6, 599 - View.combineMeasuredStates(0, 0), (char) ((TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 18640)).intern(), Handler.class);
        drVar.m686(a((ViewConfiguration.getEdgeSlop() >> 16) + 13, ((byte) KeyEvent.getModifierMetaStateMask()) + 607, (char) TextUtils.getOffsetAfter("", 0)).intern(), HandlerThread.class);
        drVar.m686(a(3 - KeyEvent.normalizeMetaState(0), (ViewConfiguration.getEdgeSlop() >> 16) + 619, (char) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) - 1)).intern(), Log.class);
        drVar.m686(a(ImageFormat.getBitsPerPixel(0) + 12, 622 - View.getDefaultSize(0, 0), (char) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 1)).intern(), SurfaceView.class);
        drVar.m686(a((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 11, Color.rgb(0, 0, 0) + 16777849, (char) ((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) - 1)).intern(), TextureView.class);
        drVar.m686(a(14 - TextUtils.lastIndexOf("", '0'), KeyEvent.getDeadChar(0, 0) + 644, (char) TextUtils.getCapsMode("", 0, 0)).intern(), GestureDetector.class);
        drVar.m686(a((KeyEvent.getMaxKeyCode() >> 16) + 23, 659 - View.getDefaultSize(0, 0), (char) ((ViewConfiguration.getEdgeSlop() >> 16) + 16739)).intern(), GestureDetector.SimpleOnGestureListener.class);
        drVar.m686(a(7 - (ViewConfiguration.getScrollBarSize() >> 8), 682 - View.combineMeasuredStates(0, 0), (char) ((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 32168)).intern(), Context.class);
        drVar.m686(a(ImageFormat.getBitsPerPixel(0) + 16, ImageFormat.getBitsPerPixel(0) + 690, (char) (13062 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24))).intern(), WebChromeClient.class);
        drVar.m686(a((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 6, 705 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), (char) TextUtils.indexOf("", "", 0, 0)).intern(), Dialog.class);
        drVar.m686(a('8' - AndroidCharacter.getMirror('0'), 711 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (char) (14969 - (ViewConfiguration.getWindowTouchSlop() >> 8))).intern(), Fragment.class);
        drVar.m686(a(TextUtils.getCapsMode("", 0, 0) + 14, ExpandableListView.getPackedPositionChild(0L) + 719, (char) ((-1) - ImageFormat.getBitsPerPixel(0))).intern(), DialogFragment.class);
        drVar.m686(a(Color.blue(0) + 11, View.MeasureSpec.getSize(0) + 732, (char) (Drawable.resolveOpacity(0, 0) + 33428)).intern(), Application.class);
        drVar.m686(a((ViewConfiguration.getKeyRepeatDelay() >> 16) + 9, 742 - MotionEvent.axisFromString(""), (char) ((-1) - TextUtils.lastIndexOf("", '0'))).intern(), Resources.class);
        drVar.m686(a(12 - (ViewConfiguration.getFadingEdgeLength() >> 16), 752 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) (17098 - Color.green(0))).intern(), IntentSender.class);
        drVar.m686(a(TextUtils.lastIndexOf("", '0', 0, 0) + 5, View.MeasureSpec.getSize(0) + 764, (char) (TextUtils.indexOf("", "", 0) + 3003)).intern(), Pair.class);
        drVar.m686(a(Color.alpha(0) + 10, TextUtils.lastIndexOf("", '0', 0) + 769, (char) (64669 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)))).intern(), LinkedList.class);
        drVar.m686(a(';' - AndroidCharacter.getMirror('0'), 778 - TextUtils.getCapsMode("", 0, 0), (char) (ExpandableListView.getPackedPositionChild(0L) + 1)).intern(), MotionEvent.class);
        drVar.m686(a((ViewConfiguration.getFadingEdgeLength() >> 16) + 8, 789 - View.MeasureSpec.getMode(0), (char) TextUtils.indexOf("", "")).intern(), Modifier.class);
        drVar.m686(a(MotionEvent.axisFromString("") + 14, (Process.myPid() >> 22) + 797, (char) (View.getDefaultSize(0, 0) + 8096)).intern(), AtomicBoolean.class);
        drVar.m686(a(View.resolveSize(0, 0) + 6, (ViewConfiguration.getPressedStateDuration() >> 16) + 810, (char) (9972 - (ViewConfiguration.getWindowTouchSlop() >> 8))).intern(), Window.class);
        drVar.m686(a((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 11, 816 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (24404 - (ViewConfiguration.getMaximumFlingVelocity() >> 16))).intern(), AdapterView.class);
        drVar.m686(a(8 - (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)), 827 - (ViewConfiguration.getEdgeSlop() >> 16), (char) (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern(), Adapter.class);
        drVar.m686(a(9 - TextUtils.indexOf((CharSequence) "", '0', 0), 835 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), (char) (23233 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)))).intern(), ScrollView.class);
        drVar.m686(a((ViewConfiguration.getDoubleTapTimeout() >> 16) + 8, ImageFormat.getBitsPerPixel(0) + 845, (char) KeyEvent.getDeadChar(0, 0)).intern(), TextView.class);
        drVar.m686(a(Drawable.resolveOpacity(0, 0) + 6, 853 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) TextUtils.getOffsetAfter("", 0)).intern(), Button.class);
        drVar.m686(a((ViewConfiguration.getScrollDefaultDelay() >> 16) + 12, ExpandableListView.getPackedPositionGroup(0L) + 858, (char) (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern(), LinearLayout.class);
        drVar.m686(a(14 - Gravity.getAbsoluteGravity(0, 0), 870 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (35843 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)))).intern(), RelativeLayout.class);
        drVar.m686(a(KeyEvent.getDeadChar(0, 0) + 15, 932 - AndroidCharacter.getMirror('0'), (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), View.OnClickListener.class);
        drVar.m686(a(22 - KeyEvent.getDeadChar(0, 0), TextUtils.getTrimmedLength("") + 899, (char) (63053 - (ViewConfiguration.getScrollBarSize() >> 8))).intern(), View.OnLayoutChangeListener.class);
        drVar.m686(a(15 - TextUtils.indexOf("", "", 0, 0), ExpandableListView.getPackedPositionGroup(0L) + 921, (char) (23100 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern(), KeyguardManager.class);
        drVar.m686(a((Process.myPid() >> 22) + 15, TextUtils.getOffsetBefore("", 0) + 936, (char) (Gravity.getAbsoluteGravity(0, 0) + 47979)).intern(), AtomicReference.class);
        drVar.m686(a((ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 17, 951 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (46317 - (ViewConfiguration.getLongPressTimeout() >> 16))).intern(), PreferenceManager.class);
        drVar.m686(a(((byte) KeyEvent.getModifierMetaStateMask()) + 9, View.MeasureSpec.makeMeasureSpec(0, 0) + 968, (char) (64672 - View.MeasureSpec.makeMeasureSpec(0, 0))).intern(), Executor.class);
        drVar.m686(a((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 17, (ViewConfiguration.getEdgeSlop() >> 16) + 976, (char) (Gravity.getAbsoluteGravity(0, 0) + 48361)).intern(), gy.class);
        drVar.m686(a(((byte) KeyEvent.getModifierMetaStateMask()) + 6, 994 - Gravity.getAbsoluteGravity(0, 0), (char) Color.blue(0)).intern(), Proxy.class);
        drVar.m686(a(17 - View.resolveSize(0, 0), 999 - TextUtils.indexOf("", ""), (char) TextUtils.getCapsMode("", 0, 0)).intern(), SharedPreferences.class);
        drVar.m686(a(13 - (ViewConfiguration.getLongPressTimeout() >> 16), (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 1016, (char) (Process.myPid() >> 22)).intern(), dd.class);
        drVar.m686(a(13 - ExpandableListView.getPackedPositionGroup(0L), TextUtils.indexOf((CharSequence) "", '0', 0) + IronSourceError.ERROR_RV_LOAD_FAIL_UNEXPECTED, (char) (View.MeasureSpec.getSize(0) + 56018)).intern(), WebViewClient.class);
        drVar.m686(a(22 - (ViewConfiguration.getKeyRepeatDelay() >> 16), 1042 - TextUtils.indexOf("", "", 0), (char) View.getDefaultSize(0, 0)).intern(), hd.class);
        drVar.m686(a((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 24, 1064 - Drawable.resolveOpacity(0, 0), (char) (TextUtils.indexOf((CharSequence) "", '0', 0) + 1)).intern(), hg.class);
        drVar.m686(a(View.resolveSizeAndState(0, 0, 0) + 14, 1087 - Process.getGidForName(""), (char) Color.red(0)).intern(), db.class);
        drVar.m686(a(12 - View.combineMeasuredStates(0, 0), (ViewConfiguration.getEdgeSlop() >> 16) + IronSourceConstants.RV_API_HAS_AVAILABILITY_FALSE, (char) (49594 - Color.green(0))).intern(), df.class);
        drVar.m686(a(ExpandableListView.getPackedPositionChild(0L) + 12, (ViewConfiguration.getMinimumFlingVelocity() >> 16) + 1114, (char) (11609 - MotionEvent.axisFromString(""))).intern(), dc.class);
        drVar.m686(a(6 - (KeyEvent.getMaxKeyCode() >> 16), 1125 - (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) (TextUtils.getOffsetBefore("", 0) + 53915)).intern(), Bitmap.class);
        drVar.m686(a(Color.blue(0) + 15, 1130 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (char) View.resolveSizeAndState(0, 0, 0)).intern(), 1);
        drVar.m686(a(TextUtils.getCapsMode("", 0, 0) + 16, 1146 - View.MeasureSpec.makeMeasureSpec(0, 0), (char) ((ViewConfiguration.getScrollBarSize() >> 8) + 42447)).intern(), 2);
        drVar.m686(a(17 - ((byte) KeyEvent.getModifierMetaStateMask()), 1162 - Drawable.resolveOpacity(0, 0), (char) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), 4);
        drVar.m686(a((ViewConfiguration.getScrollBarSize() >> 8) + 15, 1180 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (char) (KeyEvent.normalizeMetaState(0) + 17534)).intern(), 8);
        drVar.m686(a((Process.myPid() >> 22) + 14, (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 1194, (char) (ViewConfiguration.getLongPressTimeout() >> 16)).intern(), 16);
        drVar.m686(a(22 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (ViewConfiguration.getWindowTouchSlop() >> 8) + IronSourceConstants.RV_INSTANCE_SHOW_CHANCE, (char) TextUtils.getCapsMode("", 0, 0)).intern(), 32);
        drVar.m686(a(17 - (ViewConfiguration.getPressedStateDuration() >> 16), Color.argb(0, 0, 0, 0) + 1230, (char) Gravity.getAbsoluteGravity(0, 0)).intern(), 64);
        drVar.m686(a(18 - KeyEvent.getDeadChar(0, 0), TextUtils.indexOf("", "", 0) + 1247, (char) ExpandableListView.getPackedPositionGroup(0L)).intern(), 128);
        drVar.m686(a(15 - Color.alpha(0), ImageFormat.getBitsPerPixel(0) + 1266, (char) ((-1) - TextUtils.lastIndexOf("", '0', 0))).intern(), 256);
        drVar.m686(a((Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 17, (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)) + 1280, (char) ExpandableListView.getPackedPositionType(0L)).intern(), 512);
        drVar.m686(a(17 - (ViewConfiguration.getTouchSlop() >> 8), 1299 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), (char) (ViewConfiguration.getWindowTouchSlop() >> 8)).intern(), 1024);
        drVar.m686(a(15 - Color.green(0), 1315 - TextUtils.indexOf("", "", 0, 0), (char) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0))).intern(), 2048);
        drVar.m686(a((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 7, KeyEvent.getDeadChar(0, 0) + 1330, (char) ((ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)) + 26640)).intern(), Boolean.TYPE);
        drVar.m686(a(4 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), KeyEvent.getDeadChar(0, 0) + 1337, (char) (ExpandableListView.getPackedPositionGroup(0L) + TypedValues.Custom.TYPE_BOOLEAN)).intern(), Character.TYPE);
        drVar.m686(a(4 - (ViewConfiguration.getFadingEdgeLength() >> 16), 1341 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (char) TextUtils.indexOf("", "", 0)).intern(), Byte.TYPE);
        drVar.m686(a(6 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), 1345 - Color.argb(0, 0, 0, 0), (char) (TextUtils.lastIndexOf("", '0') + 63864)).intern(), Short.TYPE);
        drVar.m686(a(2 - ((byte) KeyEvent.getModifierMetaStateMask()), 1349 - TextUtils.lastIndexOf("", '0'), (char) (4392 - View.combineMeasuredStates(0, 0))).intern(), Integer.TYPE);
        drVar.m686(a(Gravity.getAbsoluteGravity(0, 0) + 4, Drawable.resolveOpacity(0, 0) + 1353, (char) Color.alpha(0)).intern(), Long.TYPE);
        drVar.m686(a(5 - (ViewConfiguration.getScrollBarSize() >> 8), TextUtils.lastIndexOf("", '0', 0) + 1358, (char) ((-1) - TextUtils.indexOf((CharSequence) "", '0', 0))).intern(), Float.TYPE);
        drVar.m686(a(6 - Color.alpha(0), 1362 - (ViewConfiguration.getFadingEdgeLength() >> 16), (char) KeyEvent.normalizeMetaState(0)).intern(), Double.TYPE);
        drVar.m686(a(TextUtils.lastIndexOf("", '0', 0, 0) + 5, ((byte) KeyEvent.getModifierMetaStateMask()) + 1369, (char) TextUtils.indexOf("", "", 0)).intern(), Void.TYPE);
        drVar.m686(a(21 - View.MeasureSpec.getSize(0), View.getDefaultSize(0, 0) + 1372, (char) TextUtils.getTrimmedLength("")).intern(), Integer.valueOf(Build.VERSION.SDK_INT));
        drVar.m686(a(11 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (ViewConfiguration.getWindowTouchSlop() >> 8) + 1393, (char) (Process.getGidForName("") + 16336)).intern(), 0);
        drVar.m686(a(14 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (Process.myTid() >> 22) + 1405, (char) (ViewConfiguration.getScrollBarSize() >> 8)).intern(), 4);
        drVar.m686(a(View.MeasureSpec.getMode(0) + 9, (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 1419, (char) (19494 - View.getDefaultSize(0, 0))).intern(), 8);
        drVar.m686(a(TextUtils.getCapsMode("", 0, 0) + 24, View.MeasureSpec.getSize(0) + 1428, (char) KeyEvent.normalizeMetaState(0)).intern(), 0);
        drVar.m686(a(22 - (ViewConfiguration.getScrollDefaultDelay() >> 16), TextUtils.getOffsetBefore("", 0) + 1452, (char) ((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 52868)).intern(), 1);
        drVar.m686(a(25 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), KeyEvent.keyCodeFromString("") + 1474, (char) ((ViewConfiguration.getFadingEdgeLength() >> 16) + 23270)).intern(), 2);
        drVar.m686(a((ViewConfiguration.getMinimumFlingVelocity() >> 16) + 26, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 1498, (char) (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1))).intern(), 3);
        drVar.m686(a(27 - (ViewConfiguration.getScrollDefaultDelay() >> 16), 1523 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), 4);
        drVar.m686(a(TextUtils.indexOf("", "", 0, 0) + 32, 1550 - TextUtils.lastIndexOf("", '0', 0, 0), (char) (KeyEvent.getMaxKeyCode() >> 16)).intern(), 5);
        drVar.m686(a(30 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), MotionEvent.axisFromString("") + 1584, (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), 6);
        drVar.m686(a(31 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), TextUtils.lastIndexOf("", '0', 0) + 1614, (char) ((TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)) + 3836)).intern(), 7);
        drVar.m686(a(Color.green(0) + 26, (ViewConfiguration.getPressedStateDuration() >> 16) + 1643, (char) (ViewConfiguration.getDoubleTapTimeout() >> 16)).intern(), 8);
        drVar.m686(a((ViewConfiguration.getMaximumFlingVelocity() >> 16) + 31, (ViewConfiguration.getJumpTapTimeout() >> 16) + 1669, (char) (3568 - (ViewConfiguration.getDoubleTapTimeout() >> 16))).intern(), 9);
        drVar.m686(a(30 - View.combineMeasuredStates(0, 0), 1700 - View.MeasureSpec.getMode(0), (char) (63941 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)))).intern(), 10);
        drVar.m686(a((ViewConfiguration.getEdgeSlop() >> 16) + 32, (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 1729, (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), 11);
        drVar.m686(a(34 - (ViewConfiguration.getWindowTouchSlop() >> 8), (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 1762, (char) ExpandableListView.getPackedPositionType(0L)).intern(), 12);
        drVar.m686(a((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 20, 1797 - (ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)), (char) (36712 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern(), ib.f120);
        drVar.m686(a(Color.red(0) + 14, 1816 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (36134 - (ViewConfiguration.getScrollDefaultDelay() >> 16))).intern(), ib.f122);
        drVar.m686(a(KeyEvent.getDeadChar(0, 0) + 14, TextUtils.getOffsetBefore("", 0) + 1831, (char) (Gravity.getAbsoluteGravity(0, 0) + 53417)).intern(), ib.f121);
        drVar.m686(a(View.resolveSize(0, 0) + 12, (ViewConfiguration.getKeyRepeatDelay() >> 16) + 1845, (char) (12448 - TextUtils.indexOf("", ""))).intern(), ib.f78);
        drVar.m686(a('=' - AndroidCharacter.getMirror('0'), View.getDefaultSize(0, 0) + 1857, (char) (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1))).intern(), ib.f75);
        drVar.m686(a(ExpandableListView.getPackedPositionType(0L) + 17, (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 1870, (char) (64379 - View.MeasureSpec.makeMeasureSpec(0, 0))).intern(), ib.f119);
        drVar.m686(a(View.MeasureSpec.makeMeasureSpec(0, 0) + 17, (Process.myPid() >> 22) + 1887, (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), ib.f123);
        drVar.m686(a(TextUtils.getOffsetAfter("", 0) + 27, (ViewConfiguration.getScrollDefaultDelay() >> 16) + 1904, (char) TextUtils.indexOf("", "", 0, 0)).intern(), ib.f69);
        drVar.m686(a(18 - TextUtils.lastIndexOf("", '0'), Color.red(0) + 1931, (char) (19311 - (ViewConfiguration.getEdgeSlop() >> 16))).intern(), ib.f115);
        drVar.m686(a('F' - AndroidCharacter.getMirror('0'), 1950 - (ViewConfiguration.getScrollBarSize() >> 8), (char) (View.combineMeasuredStates(0, 0) + 23086)).intern(), ib.f114);
        drVar.m686(a(18 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), 1973 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern(), ib.f116);
        drVar.m686(a((SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 19, (ViewConfiguration.getEdgeSlop() >> 16) + 1990, (char) (View.combineMeasuredStates(0, 0) + 35656)).intern(), ib.f117);
        drVar.m686(a(View.MeasureSpec.getMode(0) + 21, Color.blue(0) + 2010, (char) (Color.green(0) + 8765)).intern(), ib.f118);
        drVar.m686(a(24 - TextUtils.lastIndexOf("", '0'), 2079 - AndroidCharacter.getMirror('0'), (char) TextUtils.getOffsetAfter("", 0)).intern(), ib.f113);
        drVar.m686(a(TextUtils.indexOf((CharSequence) "", '0', 0) + 24, 2056 - (KeyEvent.getMaxKeyCode() >> 16), (char) TextUtils.getTrimmedLength("")).intern(), ib.f109);
        drVar.m686(a(View.resolveSizeAndState(0, 0, 0) + 38, View.MeasureSpec.getMode(0) + 2079, (char) (Process.myTid() >> 22)).intern(), ib.f87);
        drVar.m686(a(19 - Drawable.resolveOpacity(0, 0), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 2116, (char) (ViewConfiguration.getMinimumFlingVelocity() >> 16)).intern(), ib.f72);
        drVar.m686(a(30 - (ViewConfiguration.getJumpTapTimeout() >> 16), 2136 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1)), (char) (TextUtils.indexOf("", "") + 32046)).intern(), ib.f70);
        drVar.m686(a(31 - TextUtils.lastIndexOf("", '0', 0, 0), 2166 - (ViewConfiguration.getScrollBarSize() >> 8), (char) (ViewConfiguration.getFadingEdgeLength() >> 16)).intern(), ib.f71);
        drVar.m686(a(19 - (ViewConfiguration.getPressedStateDuration() >> 16), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 2198, (char) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) - 1)).intern(), ib.f105);
        drVar.m686(a((ViewConfiguration.getDoubleTapTimeout() >> 16) + 22, 2217 - Color.argb(0, 0, 0, 0), (char) (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), ib.f106);
        drVar.m686(a(KeyEvent.normalizeMetaState(0) + 23, (ViewConfiguration.getPressedStateDuration() >> 16) + 2239, (char) (46500 - (ViewConfiguration.getKeyRepeatDelay() >> 16))).intern(), ib.f111);
        drVar.m686(a(28 - KeyEvent.getDeadChar(0, 0), 2262 - Color.blue(0), (char) (Process.getGidForName("") + 1)).intern(), ib.f112);
        drVar.m686(a(29 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), 2290 - ExpandableListView.getPackedPositionType(0L), (char) (ViewConfiguration.getScrollBarFadeDuration() >> 16)).intern(), ib.f110);
        drVar.m686(a((ViewConfiguration.getJumpTapTimeout() >> 16) + 25, 2320 - ExpandableListView.getPackedPositionGroup(0L), (char) (ViewConfiguration.getEdgeSlop() >> 16)).intern(), ib.f108);
        drVar.m686(a(20 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)), 2344 - TextUtils.lastIndexOf("", '0', 0), (char) (1 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)))).intern(), ib.f107);
        drVar.m686(a((Process.myPid() >> 22) + 25, Color.rgb(0, 0, 0) + 16779580, (char) (4575 - View.resolveSizeAndState(0, 0, 0))).intern(), ib.f100);
        drVar.m686(a((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 23, TextUtils.lastIndexOf("", '0', 0, 0) + 2390, (char) ((-1) - TextUtils.indexOf((CharSequence) "", '0'))).intern(), ib.f103);
        drVar.m686(a(23 - Drawable.resolveOpacity(0, 0), 2412 - ExpandableListView.getPackedPositionChild(0L), (char) (((Process.getThreadPriority(0) + 20) >> 6) + 18802)).intern(), ib.f99);
        drVar.m686(a(25 - (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)), TextUtils.indexOf((CharSequence) "", '0', 0) + 2437, (char) Color.green(0)).intern(), ib.f95);
        drVar.m686(a(View.resolveSizeAndState(0, 0, 0) + 27, 2460 - Color.green(0), (char) (18270 - Color.argb(0, 0, 0, 0))).intern(), ib.f98);
        drVar.m686(a(22 - ExpandableListView.getPackedPositionChild(0L), 2486 - TextUtils.indexOf((CharSequence) "", '0', 0, 0), (char) ((ViewConfiguration.getGlobalActionKeyTimeout() > 0L ? 1 : (ViewConfiguration.getGlobalActionKeyTimeout() == 0L ? 0 : -1)) + 22166)).intern(), ib.f104);
        drVar.m686(a(Color.rgb(0, 0, 0) + 16777248, KeyEvent.keyCodeFromString("") + 2510, (char) (10846 - (ViewConfiguration.getScrollFriction() > 0.0f ? 1 : (ViewConfiguration.getScrollFriction() == 0.0f ? 0 : -1)))).intern(), ib.f102);
        drVar.m686(a((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 31, 2541 - TextUtils.lastIndexOf("", '0', 0), (char) (35482 - TextUtils.indexOf("", "", 0))).intern(), ib.f101);
        drVar.m686(a(20 - TextUtils.lastIndexOf("", '0', 0, 0), 2572 - (TypedValue.complexToFloat(0) > 0.0f ? 1 : (TypedValue.complexToFloat(0) == 0.0f ? 0 : -1)), (char) ExpandableListView.getPackedPositionGroup(0L)).intern(), ib.f97);
        drVar.m686(a(21 - (ViewConfiguration.getLongPressTimeout() >> 16), 2593 - (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)), (char) ((ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)) + 1711)).intern(), ib.f96);
        drVar.m686(a(18 - View.MeasureSpec.getMode(0), 2614 - (KeyEvent.getMaxKeyCode() >> 16), (char) ((ViewConfiguration.getDoubleTapTimeout() >> 16) + 53127)).intern(), ib.f94);
        drVar.m686(a(ExpandableListView.getPackedPositionType(0L) + 20, 2633 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), (char) ((ViewConfiguration.getWindowTouchSlop() >> 8) + 52910)).intern(), ib.f89);
        drVar.m686(a(24 - View.MeasureSpec.getSize(0), 2652 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (char) KeyEvent.keyCodeFromString("")).intern(), ib.f90);
        drVar.m686(a(TextUtils.indexOf("", "", 0) + 16, 2675 - (ExpandableListView.getPackedPositionForChild(0, 0) > 0L ? 1 : (ExpandableListView.getPackedPositionForChild(0, 0) == 0L ? 0 : -1)), (char) (59055 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)))).intern(), ib.f92);
        drVar.m686(a(24 - Color.argb(0, 0, 0, 0), 2692 - (Process.myTid() >> 22), (char) (ExpandableListView.getPackedPositionChild(0L) + 28478)).intern(), ib.f91);
        drVar.m686(a((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 25, (ViewConfiguration.getLongPressTimeout() >> 16) + 2716, (char) Drawable.resolveOpacity(0, 0)).intern(), ib.f93);
        drVar.m686(a((KeyEvent.getMaxKeyCode() >> 16) + 25, 2740 - MotionEvent.axisFromString(""), (char) (Drawable.resolveOpacity(0, 0) + 64469)).intern(), ib.f86);
        int i = c + 39;
        f5563d = i % 128;
        if (!(i % 2 == 0)) {
            return drVar;
        }
        int i2 = 32 / 0;
        return drVar;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Object m682(String str) {
        int i = f5563d + 13;
        c = i % 128;
        int i2 = i % 2;
        dr drVar = this;
        while (true) {
            if (!(drVar != null)) {
                StringBuilder sb = new StringBuilder();
                sb.append(a(9 - View.combineMeasuredStates(0, 0), TextUtils.indexOf("", "", 0), (char) Color.blue(0)).intern());
                sb.append(str);
                sb.append(a((ViewConfiguration.getKeyRepeatTimeout() >> 16) + 10, 9 - (ViewConfiguration.getMinimumFlingVelocity() >> 16), (char) View.MeasureSpec.makeMeasureSpec(0, 0)).intern());
                throw new RuntimeException(sb.toString());
            }
            if ((drVar.f5564e.containsKey(dq.m680(str)) ? 'K' : (char) 30) != 30) {
                int i3 = c + 89;
                f5563d = i3 % 128;
                int i4 = i3 % 2;
                Object obj = drVar.f5564e.get(dq.m680(str));
                int i5 = c + 15;
                f5563d = i5 % 128;
                if (i5 % 2 != 0) {
                    return obj;
                }
                throw null;
            }
            drVar = drVar.f5565f;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final dr m683() {
        int i = f5563d + 37;
        int i2 = i % 128;
        c = i2;
        int i3 = i % 2;
        dr drVar = this.f5565f;
        int i4 = i2 + 21;
        f5563d = i4 % 128;
        if (!(i4 % 2 == 0)) {
            return drVar;
        }
        int i5 = 95 / 0;
        return drVar;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m684(List<String> list) {
        int i = f5563d + 43;
        c = i % 128;
        if (i % 2 != 0) {
            throw null;
        }
        if (list == null) {
            return;
        }
        Iterator<String> it = list.iterator();
        int i2 = c + 73;
        f5563d = i2 % 128;
        int i3 = i2 % 2;
        while (true) {
            if (!it.hasNext()) {
                return;
            }
            int i4 = f5563d + 73;
            c = i4 % 128;
            int i5 = i4 % 2;
            this.f5564e.put(it.next(), null);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final dr m685() {
        int i = c + 91;
        int i2 = i % 128;
        f5563d = i2;
        if ((i % 2 == 0 ? (char) 4 : (char) 27) == 4) {
            throw null;
        }
        dr drVar = this.f5566g;
        int i3 = i2 + 37;
        c = i3 % 128;
        if (i3 % 2 == 0) {
            return drVar;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m686(String str, Object obj) {
        int i = f5563d + 15;
        c = i % 128;
        int i2 = i % 2;
        dr drVar = this;
        while (true) {
            if ((drVar != null ? (char) 19 : '+') == '+') {
                this.f5564e.put(dq.m680(str), obj);
                return;
            }
            int i3 = f5563d + 65;
            c = i3 % 128;
            int i4 = i3 % 2;
            if ((drVar.f5564e.containsKey(dq.m680(str)) ? 'B' : 'W') == 'B') {
                int i5 = f5563d + 13;
                c = i5 % 128;
                char c2 = i5 % 2 != 0 ? '*' : (char) 16;
                drVar.f5564e.put(dq.m680(str), obj);
                if (c2 != 16) {
                    int i6 = 28 / 0;
                    return;
                }
                return;
            }
            drVar = drVar.f5565f;
            int i7 = f5563d + 79;
            c = i7 % 128;
            int i8 = i7 % 2;
        }
    }
}
