package com.json.adqualitysdk.sdk.i;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class cz implements cf {
    private static char[] a = null;
    private static long b = 0;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5509d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cu f5510e = new cu();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final de f5511f = new de();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cp f5512g = new cp();
    private final cv h = new cv();
    private final cw i = new cw();
    private final cy j = new cy();
    private final cs k = new cs();
    private final co l = new co();
    private final cm m = new cm();
    private final cr n = new cr();
    private final da o = new da();
    private final cq p = new cq();
    private final ct q = new ct();

    static {
        char[] cArr = new char[1930];
        ByteBuffer.wrap("Eïâk\nì³mÛæ\u0000W¨ÓÑZy\u0089¦*Î¨w&\u009f\u0085Ä\u0001l\u008fæ1Aµ©2\u0010³x8£\u0089\u000b\rr\u0084Ú]\u0005ømhÔï<QgÎjµÍ?%¶\u009c\tô\u0087/\b\u0087\u0090þ\u000fVü\u0089náÈXy°ÝëT¤\u0081\u0003\u001fë\u0096R):§á(I°0/\u0098ÜGN/è\u0096Y~ý%t\u0000g§íOdöÙ\u009eDEÿíU\u0094Ú<\u0016ã¡\u008b52¯Ú&\u0081\u009a)\u001fÐ\u0095xÁ kÇäoq\u0016Ö¾AeÄ\rA\u0000i§ûOFöñ\u009eEEßíf\u0094Ñ<3ã¡\u008b22´Ú\u0005\u0000g§íOdöÎ\u009eIEÍíG\u0000g§íOdöÛ\u009eOEÆíD\u0094Ý<.ã¼\u008b\u00062±Ú\u0005\u0081\u009f\u0000g§íOdöÞ\u009eIEÍí\\\u0094Ü\u0000g§íOdöÞ\u009eIEÍí\\\u0094Ü<3\u0000g§íOdöÞ\u009eIEÚíC\u0094Ì<\u0006ã¡\u008b52´Ú\u0004\u0081§)\u0016Ð¬xù xÇõ\u0000g§íOdöÞ\u009eIEÚíC\u0094Ì<\u0006ã¡\u008b52´Ú\u0004\u0081¿)\u0019Ð\u008cxè XÇâo}\u0016Æ¾AeÈ\fR«ËCDúÈ\u0092eIüáG\u0098à0\u0014ï\u0095\u0087\u0005>\u00adÖ4\u008d¿%\u0003Ü¼tØ,UËÅcL\u001aã\u0000g§íOdöÕ\u009eEEÜíX\u0094×<$\u0011J¶À^Içø\u008fhTñüu\u0085ú-\tò\u0096Þ\ty\u0090\u0091\u001f(\u0093@>\u009b§3\u0017J·â^=ÊUUìÖ\u0004N_ç÷|\u000eÐ¦\u009fþ\u000b\u0019\u0096±\u0016È¯`0\u0000g§íOdöÞ\u009eIEÚíC\u0094Ì<\u0013ã¼\u008b\"2±Ú\u000e\u0081\u008f\u0085\u0002\"\u009bÊ\u0014s\u0098\u001b5À¬h\u0002\u0011¼¹@fÛ\u000eR·Ñ_E\u0004ì¬wUÛý\u0094¥\u0000B\u009dê\u001d\u0093¤;;\u0000g§íOdö×\u009eBEÂíU\u0094Û<4G\u0090à\u001a\b\u0093± Ùµ\u00025ª¢Ó,{Ã¤L¶<\u0011¶ù?@\u008c(\u0019ó\u0099[\u000e\"\u0080\u008aoUÕ=b\u0084ælW7×Lhëâ\u0003kºØÒM\tÍ¡ZØÔp;¯\u0091Ç>~»\u0096\u001aÍ\u0082îTIÞ¡W\u0018äpq«ñ\u0003fzèÒ\u0007\r½e\nÜ\u008e4?o¿Ç0Û³|9\u0094°-\u0003E\u0096\u009e\u00166\u0081O\u000fçà8JPåé`\u0001ÁZYò×ÙU~Î\u0096A/ÈGj\u009cä4}MØå\f:\u0086R\u0003ë\u009a\u00031X®\u0000g§íOdöÙ\u009eLEÄíc\u0094Ì<2ã¡\u008b>2¿Ú\u0013\u0000g§íOdöÙ\u009eLEÄíb\u0094Ý<'ã\u00ad\u008b(2\u0095Ú\u0001\u0081\u009c)\u0013Ð\u0090xå {\u0000g§íOdöÞ\u009eIEÚíC\u0094Ì<\u0012ã\u00ad\u008b72½Ú\u0018\u0081¥)\u0011Ð\u008cxã `ñÀVY¾Ö\u0007Zo÷´n\u001cÕeiÍ\u0082\u0012\u0006z\u0096Ã7+ªp8Ø§!>\u0089MÑÎ6A\u0000s§íOdöí\u009ePEîíB\u0094Ù<-ã\u00ad\u008b\u001c2±Ú\u0013\u0081\u009c)\u0015Ð\u0096xå zZÑýN\u0015Þ¬TÄõ\u001fn·ÕÎif\u0082¹\u0006Ñ\u0096h7\u0080ªÛ8s§\u008a>\"MzÎ\u009dA\u0082~%áÍltø\u001cMÇÇoY\u0016û¾\"a\u0087\t0°½X\u000f\u0003\u008f«0R\u009dúÿ¢pEùíz\u0094É<VkÇÌ^$Ñ\u009d]õð.i\u0086ÂÿuW\u0081\u0088\u001bà»Y\u0012±\u0087ê B½»?\u0013OKà¬]\u0004Ï}pÕé\u000ezfùß\u0016#ú\u0084elèÕ|½ÉfCÎÝ·\u007f\u001f¦À\u0014¨·\u0011%ù\u008b¢\b\n´ó\u0019[{\u0003ôä}Lþ5M\u009dÒ\u0000c§úOuöù\u009eTEÍíf\u0094Ñ<%ã¿\u008b\u001f2¶Ú4\u0081\u0087)\u0005Ð\u009bxè DÇùok\u0016Ô¾MeÞ\r]´²\u0000g§íOdö×\u009eNEëí\\\u0094Ñ<#ã£\u008b\u001c2±Ú\u0013\u0081\u009c)\u0015Ð\u0096xå z\u0000g§íOdö×\u009eNEüí_\u0094Í<#ã \u008b\u001c2±Ú\u0013\u0081\u009c)\u0015Ð\u0096xå z\u0086\u000e!\u0097É\u0018p\u0094\u00189Ã k\u0010\u0012°ºIeÌ\r\\´å\\a\u0007ä¯dVðþ\u009f¦*A\u0093é%\u0090¿8 ã\u00ad\u008b42ßÚ@\u0085Ù-yÔä|v'éÏpw\u0003\u001e\u0080Æ\u000f\u0000c§úOuöù\u009eTEÍí}\u0094Ý<$ã¡\u008b12\u0088Ú\f\u0081\u0089)\tÐ\u009dxò GÇþoQ\u0016Î¾Neß\rt´©\\;\u0003¤«=R\u008eú\r¡\u0082tJÓÓ;\\\u0082Ðê}1ä\u0099TàôH\r\u0097\u0088ÿ\u0018F¡®%õ ] ¤´\fÛTn³×\u001brbæÊl\u0011éy}À\u008c(\u0015w\u0090ß\u001e&§\u008e\rÕ°=\"\u0085]ìÄ4W\u0093Ôû{oµÈ, £\u0099/ñ\u0082*\u001b\u0082«û\u000bSò\u008cwäç]^µÚî_Fß¿K\u0017$O\u0091¨(\u0000\u009dy\u0013Ñ\u009b\n\rb\u00adÛy3ólvÄâ=S\u0095ÊÎC&â\u009e¿÷-/²\u0088+à\u0098Y\u001b±\u0094²Í\u0015TýÛDW,ú÷c_Ñ&x\u008e¢Q\u00079\u0087\u0080\u0019h»32\u009b\u009db>ÊO\u0092ÈuYÝÓ¤B\fï×m¿â\u0006\u000bî\u0088±\u001b\u0019\u0084\u0000c§úOuöù\u009eTEÍí\u007f\u0094Ö<\u0001ã¼\u008b$2¹Ú\u0003\u0081\u0080)#Ð\u008cxá |Çõo[\u0016È¾IeÞ\r_´¥\\\u0004\u0003¹«+R\u0094ú\r¡\u009eI\u001dñr(\u00ad\u008f2g¿Þ+¶\u009em\u0014Å\u008a¼(\u0014ñËD£ê\u001abòÔ©t\u0001ÀøJP/\b»ï*G³>\u001a\u0096»M\u0006%\u0094\u009cktò+a\u0083âzM÷ºP%¸¨\u0001<i\u0089²\u0003\u001a\u009dc?Ëæ\u0014M|ýÅt-ÁvAÞè'B\u008f-×°09\u0098¢á\rI\u0084\u00924ú\u0099C{«ôô}\\þ¥M\rÒ\u0083\u0016$\u0089Ì\u0004u\u0090\u001d%Æ¯n1\u0017\u0093¿J`á\bQ±ØYm\u0002íª]Sòû\u0082£\u0003D¸ì\u0015\u0095·=8æ±\u008e27Áß^©C\u000eÜæQ_Å7pìúDd=Æ\u0095\u001fJ´\"\u0004\u009b\u008ds8(¸\u0080\u0002y¦ÑÜ\u0089InÍÆL¿å\u0017pÌî¤g\u001d½õ\u0010ª\u0092\u0002\u001dû´S7\b¤à;Û¡|+\u0094¢-\u001aE\u0083\u009e\r6\u0099O\fçç8zPóéz\u0001åZOòÚ\u000bR£$û¯\u001c5´µ\u0000c§úOuöù\u009eTEÍír\u0094Ê</ã©\u008b42»Ú\u0001\u0081\u009b)\u0004Ðªxå kÇõoq\u0016Ö¾MeÂU\u0087ò\u001e\u001a\u0091£\u001dË°\u0010)¸\u0080Á\u001eiè¶EÞÇgH\u008fáÔb|ñ\u0085n\u0000i§ûOQöü\u009eqEÝíQ\u0094Ô<)ã¼\u008b)2\u0088Ú\u0012\u0081\u0087)\bÐ\u0081xÌ aÇãol\u0016Å¾FeÕ\rJ¬N\u000b×ãXZÔ2yéàAJ8ð\u0090\u000fO³'\u0014\u009e\u0090v:-\u0089\u00854|¦ÔÙ\u008c@kÓÃPºÿu*Ò´:=\u0083\u0096ë\u001c0\u0093\u0098?á\u0088I|\u0096æþJGí¯PôÔ\\G¥Õ\u0089{.åÆl\u007fÇ\u0017MÌÂd{\u001dØµ:j¯\u00025»µS+\b\u008c \u0011Y\u0095ñæ©t¸7\u001f½÷4N\u009f&\u0015ý\u009aU6,\u0081\u0084u[ï3C\u008aäbY9Ý\u0091NhÜåÜBVªß\u0013t{þ q\bÈqkÙ\u0089\u0006\u001cn\u0086×\u0006?\u0098d?Ì¢5&\u009dUÅÇ\u0000s§íO~öü\u009eeEÚíB\u0094×<2\u0000s§íO~öü\u009ejEÛí_\u0094Ö<\u0005ã¾\u008b52¶Ú\u0014\u0000a§ìOtöÝ\u009eVEÍí^\u0094Ì<\u0005ã°\u008b 2¹Ú\u000e\u0081\u008c)\u0015Ð\u008a\u0000g§íOdöÛ\u009eOEÆí^\u0094Ý<#ã¼\u008b?2ª·9\u0010³ø:A\u0085)\u0011ò\u0098Z\u001a#\u0083\u008bfTâ\u0000g§íOdöÌ\u009eIEÅíU\u0000g§íOdöÔ\u009eAEÛíD\u0094ì</ã½\u008b32°\u0000g§íOdöÔ\u009eAEÛíD\u0094ì</ã½\u008b32°Ú4\u0081\u0081)\u001dÐ\u009d\u0000g§íOdöÛ\u009eUEÚíB\u0094Ý<.ã¼\u008b\u00112»Ú\u0014\u0081\u0081)\u0006Ð\u0091xô q\u0000c§úOuöù\u009eTEÍís\u0094Ê<%ã©\u008b$2±Ú\u0016\u0081\u008d)9Ð\u0096xæ g\u0000c§úOuöù\u009eTEÍíq\u0094Ü<6ã\u00ad\u008b\"2¬Ú\t\u0081\u009b)\u0015Ð\u008axÉ fÇöow\u0000c§úOuöù\u009eTEÍís\u0094Ê<%ã©\u008b$2±Ú\u0016\u0081\u008d)9Ð\u009cxóD÷ãn\u000bá²mÚÀ\u0001Y©éÐIx°§5Ï¥v8\u009e\u009dÅ\u0013m\u008a\u0094(<udè\u0083e\u0000g§íOdöË\u009eDEÃíf\u0094Ý<2ã»\u008b92·Ú\u000e\u0000g§íOdöÞ\u009eUEÄí\\\u0094ë<$ã£\u008b\u00062½Ú\u0012\u0081\u009b)\u0019Ð\u0097xî×opå\u0098l!ÃIG\u0092Ï:UCÜë)4\u0093\\<å»\r>V\u0085þ\n\u0007\u0083¯á÷o\u0010ö\u0000g§íOdöÙ\u009eGEÍí^\u0094Ì<\u0012ã\u00ad\u008b=2·Ú\u0014\u0081\u008d)3Ð\u0097xî nÇùo\u007fþ.Y·±8\b´`\u0019»\u0080\u00139j\u0090Âk\u001däuhÌù$Y\u007fà×K.Ð\u0086£Þ19\u0097\u0091&è\u0082@\u000b\u0005\u0091¢\u001bJ\u0092ó-\u009b¹@0è¨\u0091+9ÕæJ\u008eÉ7\\ßÀ\u0084{,ôÕ}}\u001f%\u0091Â\b$(\u0083£k3Ò\u0099º\u0012a\u0089É\u001a°\u0088\u0000i§ûOCöü\u009eKEáí^\u0094ì<%ã»\u008b$2\u0095Ú\u000f\u0081\u008c)\u0015¢L\u0005ÆíOTò<oç×Ob6ã\u009e\u000eA§)\u001e\u0090\u0080x(#±\u008b2r£Úß\u0082JeÔÍ]Ó-t§\u009c.%\u0091M\u001f\u0096\u0090>\bG\u0097ïd0öXYáý\tDRÌú_\u0003Ñ«¾ó-\u0014¨¼\u001cÅ\u008bm\u000f¶\u009fQCöÉ\u001e@§ÿÏq\u0014þ¼fÅùm\n²\u0098Ú8c\u0095\u008b7Ð¸x1\u0081²)Áq^\u0096ú>]Géïi\u0099E>×Ö\u007foÛ\u0007bÜâtu\ró¥*z\u008b\u0012\u000e«\u0097C)\u0018\u0097°9IºáÈ¹a^ÒöU\u008fî'hüù\u0094p\u0000g§íOdöÛ\u009eOEÆíV\u0094Ñ<'ã\u0086\u008b?2\u0091Ú\r\u0081\u0098)5Ð\u0080xô zÇño]\u0016Ö¾MeÞ\rL´\u0090\\-\u0003¢«;R\u0085ú\u0006¡\u0084\u0000b§úO\u007föù\u009eDEËíQ\u0094Ë<4ã\u008d\u008b&2½Ú\u000e\u0081\u009cÈ\u000eo\u008d\u0087\u0007].ú\u00ad\u0012<«§TAóÚ\u001bB¢ÙÊy\u0011Ü¹iÀèh\u0005«\u008f\f\nä\u009a]\u001d5£î<F\u0098?9\u0097ÓHe Õ\u0099Lqè*g\u0082ô\u0000c§úOuöù\u009eTEÍíb\u0094Í<.ã¦\u008b12ºÚ\f\u0081\u008d\b\u0099¯\u0016G\u0095þ<\u0096¥M\u000eåº\u009c:4Åëw\u0083Ó:AÒî\u0089b!ÿ\u0000p§çOcöì\u009eoEÆí}\u0094Ù<)ã¦\u008b\u00042°Ú\u0012\u0081\u008d)\u0011Ð\u009c'¥\u00802h¶Ñ9¹±b\u0018Ê\u0089³\f\u001bìÄx¬á\u0015BýÛ¦p\u000eÄ÷D_;\u0007\u0089à-H¿1\u0010\u0099\u009cB\u0001\u0000r§ýO~ö×\u009eNEëí_\u0094Ö<.ã\u00ad\u008b32¬Ú\u000f\u0081\u009a)$Ð\u0090xò mÇño|\u0000p§çOcöì\u009eoEÆís\u0094×<.ã¦\u008b52»Ú\u0014\u0081\u0087)\u0002Ð¬xè zÇõoy\u0016Äì\u0084K\u0013£\u0097\u001a\u0018r\u0090©9\u0001¨x-ÐÍ\u000fYgÀÞc6úm_Åë<b\u0094\u001aÌ\u0099+\u0007\u0083\u0098ú;R®\u0089\u0010á¤XF°ÙïEGÈ\u0098\u0014?\u009e×\u0017n§\u0006<Ý¸u\"\f§¤q{É\u0013LªÊBw\u0019ø±bHøà\u0087¸6_\u0082÷\u0005\u008e²&<ý¦\u00959,úÄU\u009bÐ3_Êòbu9àÑn\u0000r§íOwöñ\u009eSEÜíU\u0094Ê<\u0002ãº\u008b?2¹Ú\u0004\u0081\u008b)\u0011Ð\u008bxô ZÇõo{\u0016Å¾AeÆ\r]´²\u0000u§æOböý\u009eGEÁíC\u0094Ì<%ãº\u008b\u00122ªÚ\u000f\u0081\u0089)\u0014Ð\u009bxá {ÇäoJ\u0016Å¾KeÕ\rQ´¶\\-\u0003¢\u0000g§íOdöÈ\u009eAEÁíB\u0094þ<)ãº\u008b#2¬Ú/\u0081\u008a)\u001aÐ\u009dxã |\u0000g§íOdöÈ\u009eAEÁíB\u0094ë<%ã«\u008b?2¶Ú\u0004\u0081§)\u0012Ð\u0092xå kÇä]\u001fú\u0095\u0012\u001c«\u00adÃ=\u0018´°!É¡ah¾ÜÖIoÙ\u0087}Üâ±\u0018\u0016\u0092þ\u001bG£/:ô¡\\&%¤\u008dZRâ:_\u0083ókv0ú\u0098jaÎÉ\u0091\u0091:v\u0086Þ\u000b§¶\u000f$\u0080à'dÏí\u0000f§çOböÝ\u009eAEËíXÞayæ\u0091{(ë@B\u009bÝ\u0000E§úObö÷\u009eRE\u0088íU\u0094À<%ã«\u008b%2¬Ú\t\u0081\u0086)\u0017ÐØxí mÇäop\u0016Ï¾Le\u0090Kõìg\u0004²½2Õ\u009b\u000e\u000f¦\u0090ß\u0013w¯¨iÀðyc\u0091\u008fÊTbÊ\u009bG3?k¨\u008c-$£]\nõ\u0083".getBytes("ISO-8859-1")).asCharBuffer().get(cArr, 0, 1930);
        a = cArr;
        b = 7540792783289034632L;
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x111f  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x1148  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0217  */
    @Override // com.json.adqualitysdk.sdk.i.cf
    /* JADX INFO: renamed from: ﾇ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo427(com.json.adqualitysdk.sdk.i.cj r26, java.lang.String r27, java.util.List<java.lang.Object> r28, com.json.adqualitysdk.sdk.i.dr r29) {
        /*
            Method dump skipped, instruction units count: 5858
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.cz.mo427(com.ironsource.adqualitysdk.sdk.i.cj, java.lang.String, java.util.List, com.ironsource.adqualitysdk.sdk.i.dr):java.lang.Object");
    }
}
