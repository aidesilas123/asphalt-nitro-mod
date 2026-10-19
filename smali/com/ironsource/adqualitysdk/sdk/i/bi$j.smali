###### Class com.ironsource.adqualitysdk.sdk.i.bi.j (com.ironsource.adqualitysdk.sdk.i.bi$j)
.class Lcom/ironsource/adqualitysdk/sdk/i/bi$j;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/ChartboostDelegate;",
        "Lcom/ironsource/adqualitysdk/sdk/i/gy<",
        "Lcom/chartboost/sdk/ChartboostDelegate;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Lcom/chartboost/sdk/ChartboostDelegate;

.field private f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

.field private synthetic g:Lcom/ironsource/adqualitysdk/sdk/i/bi;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x4ed

    new-array v1, v0, [C

    const-string v2, "\u00e9]O\u008e\u00a4\u008f\u001d\u0084r\u008a\u00ab\u00a4\u0000\u00a1y\u00b9\u00de\u00ad7\u00d2l\u00ea\u00c5\u00d3:\u00d2\u0093\u00e3\u00c8\u00e9!\u00f7\u0086\u00ea\u00ff\u0003T@\u008d\u0005\u00e2\u0016[)\u00b0;\u00e9:N:\u00a7t\u001cKuG\u00aaK\u0003cx}\u00d1b6Wl\u0088\u00c5\u009a:\u0093\u0093\u008c\u00c8\u00b5!\u00ba\u0086\u00bf\u00ff\u00aaT\u00cf\u008d\u00cf\u00e2\u00da\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u001b\u000b\u0008\u00b27Y%\u0000$\u00a7$N|\u00f5Y\u009c[CP\u00eat\u0091q8q\u00dfI\u0085\u0096,\u0084\u00d3\u008dz\u0092!\u00ab\u00c8\u00a4o\u00a1\u0016\u00b4\u00bd\u00d1d\u00d1\u000b\u00c4\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0013\u0000)\u00a7#NP\u00f5U\u009caCN\u00eal\u0091u8z\u00dfs\u0085\u008c,\u0099\u00d3\u009cz\u0089!\u00b9\u00c8\u00bc\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0016\u0000)\u00a7)NT\u00f5d\u009cGCl\u00eaw\u0091q8l\u00dfI\u0085\u0096,\u0084\u00d3\u008dz\u0092!\u00ab\u00c8\u00a4o\u00a1\u0016\u00b4\u00bd\u00d1d\u00d1\u000b\u00c4\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0014\u0000!\u00a73NU\u00f5Y\u009c[CS\u00eaQ\u0091~8|\u00dfe\u0085\u008a,\u0083\u00d3\u009cz\u0089!\u00ac\u00c8\u00b9o\u00a9\u0016\u00ac\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0013\u0000$\u00a7/NK\u00f5U\u009caCN\u00eal\u0091u8z\u00dfs\u0085\u008c,\u0099\u00d3\u009cz\u0089!\u00b9\u00c8\u00bcQ\u00ac\u00f7\u007f\u001c~\u00a5u\u00ca{\u0013U\u00b8P\u00c1Hf\\\u008f#\u00d4\u001b}\"\u0082#+\u0012p\u0018\u0099\u0006>\u001bG\u00f2\u00ec\u00b15\u00e3Z\u00e6\u00e3\u00d3\u0008\u00fcQ\u00cb\u00f6\u00c6\u001f\u00b4\u00a4\u00b4\u00cd\u008e\u0012\u00a1\u00bb\u0083\u00c0\u009ai\u0095\u008e\u009c\u00d4c}v\u0082s+fpV\u0099S\u0018\u0081\u00beRUS\u00ecX\u0083VZx\u00f1}\u0088e/q\u00c6\u000e\u009d64\u000f\u00cb\u000eb?95\u00d0+w6\u000e\u00df\u00a5\u009c|\u00ce\u0013\u00cb\u00aa\u00feA\u00d6\u0018\u00e3\u00bf\u00f1V\u008a\u00ed\u009e\u0084\u008b[\u009b\u00f2\u0093\u0089\u00bc \u00be\u00c7\u00a7\u009dH4A\u00cb^bK9n\u00d0{wk\u000en\re\u00ab\u00b6@\u00b7\u00f9\u00bc\u0096\u00b2O\u009c\u00e4\u0099\u009d\u0081:\u0095\u00d3\u00ea\u0088\u00d2!\u00eb\u00de\u00eaw\u00db,\u00d1\u00c5\u00cfb\u00d2\u001b;\u00b0xi*\u0006/\u00bf\u001aT5\r\u0001\u00aa\u000bCn\u00f8z\u0091kNr\u00e7[\u009c\u007f5@\u00d2R\u0088\u00bb!\u00a4\u00de\u00bdw\u00b2,\u0097\u00c5\u0082b\u0087\u001b\u0087\u00b0\u00f2\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u001b\u000b\u0008\u00b27Y%\u0000$\u00a7$Nj\u00f5U\u009cYCU\u00ea}\u0091c8|\u00dfM\u0085\u0097,\u0082\u00d3\u008dz\u00a1!\u00a8\u00c8\u00a0o\u00bb\u0007E\u00a1\u0096J\u0097\u00f3\u009c\u009c\u0092E\u00bc\u00ee\u00b9\u0097\u00a10\u00b5\u00d9\u00ca\u0082\u00f2+\u00cb\u00d4\u00ca}\u00fb&\u00f1\u00cf\u00efh\u00f2\u0011\u001b\u00baXc\n\u000c\u000f\u00b5:^\u0015\u0007/\u00a0%IV\u00f2S\u009bcDI\u00edl\u0096s?O\u00d8v\u0082\u008e+\u0085\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u001b\u000b\u0008\u00b27Y%\u0000$\u00a7$N|\u00f5Y\u009c[CP\u00eat\u0091q8q\u00dfM\u0085\u0097,\u0082\u00d3\u008dz\u00a1!\u00a8\u00c8\u00a0o\u00bb\u00c4\u00dfb\u000c\u0089\r0\u0006_\u0008\u0086&-#T;\u00f3/\u001aPAh\u00e8Q\u0017P\u00bea\u00e5k\u000cu\u00abh\u00d2\u0081y\u00c2\u00a0\u0090\u00cf\u0095v\u00a0\u009d\u008a\u00c4\u00b5c\u00b5\u008a\u00c81\u00f8X\u00db\u0087\u00f0.\u00ebU\u00ed\u00fc\u00f0\u001b\u00d1A\u000b\u00e8\u001e\u0017\u0011\u00be=\u00e54\u000c<\u00ab\'(\u00db\u008e\u0008e\t\u00dc\u0002\u00b3\u000cj\"\u00c1\'\u00b8?\u001f+\u00f6T\u00adl\u0004U\u00fbTRe\to\u00e0qGl>\u0085\u0095\u00c6L\u0094#\u0091\u009a\u00a4q\u008c(\u00b9\u008f\u00abf\u00cd\u00dd\u00c1\u00b4\u00c3k\u00cb\u00c2\u00cd\u00b9\u00e7\u0010\u00e2\u00f7\u00fd\u00ad!\u0004\u0018\u00fb\u0000R\u000b\u00dc\u00d7z\u0004\u0091\u0005(\u000eG\u0000\u009e.5+L3\u00eb\'\u0002XY`\u00f0Y\u000fX\u00a6i\u00fdc\u0014}\u00b3`\u00ca\u0089a\u00ca\u00b8\u0098\u00d7\u009dn\u00a8\u0085\u0087\u00dc\u00b0{\u00bb\u0092\u00df)\u00c1@\u00f1\u009f\u00db6\u00feM\u00e1\u00e4\u00dd\u0003\u00e4Y\u001c\u00f0\u0017\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0013\u0000$\u00a7)N[\u00f5[\u009ceCO\u00eaj\u0091u8I\u00dfp\u0085\u0088,\u0083\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0014\u0000!\u00a73NH\u00f5\\\u009cICY\u00eaU\u0091\u007f8z\u00dfe\u0085\u00b9,\u0080\u00d3\u0098z\u0093\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0016\u0000)\u00a7)NT\u00f5d\u009cGCr\u00ea}\u0091s8g\u00dfr\u0085\u009c,\u00b3\u00d3\u0084z\u0089!\u00bb\u00c8\u00bb\u00fcnZ\u00bd\u00b1\u00bc\u0008\u00b7g\u00b9\u00be\u0097\u0015\u0092l\u008a\u00cb\u009e\"\u00e1y\u00d9\u00d0\u00e0/\u00e1\u0086\u00d0\u00dd\u00da4\u00c4\u0093\u00d9\u00ea0As\u0098!\u00f7$N\u0011\u00a5-\u00fc\u0004[\u0018\u00b2f\tx`F\u00bfa\u0016\\m^\u00c4N#ky\u00ba\u00d0\u00af/\u0086\u0086\u00a2\u00dd\u009b4\u009b\u0093\u008c\u00ea\u009fA\u00f8\u0098\u00fc\u00f7\u00f1N\u00e4\u00a5\u00da\u00fc\u00d3\u0007\u00fa\u00a1\u000fJ\n\u00f3&\u009c\u001fE3\u00ee=\u009730\u001d\u00d9J\u0082G+U\u00d4U}@&a\u00cfdh]\u0011\u0089\u00ba\u0080c\u0090\u000c\u0097\u00b5\u00b4^\u00a3\u0007\u00b7\u00a0\u00aaI\u00cf\u00f2\u00c1\u009b\u00d8Z}\u00fc\u00ae\u0017\u00af\u00ae\u00a4\u00c1\u00aa\u0018\u0084\u00b3\u0081\u00ca\u0099m\u008d\u0084\u00f2\u00df\u00cav\u00f3\u0089\u00f2 \u00c3{\u00c9\u0092\u00d75\u00caL#\u00e7`>%Q6\u00e8\t\u0003\u001bZ\u001a\u00fd\u001a\u0014B\u00afg\u00c6e\u0019n\u00b0J\u00cbObO\u0085l\u00df\u00a3v\u00b9\u0089\u00b7 \u00ac{\u0082\u0092\u008b5\u0092L\u00a8\u00e7\u00ef>\u00eaQ\u00f3\u00e8\u00f1\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0013\u0000)\u00a7#NP\u00f5U\u009czCE\u00eao\u0091q8z\u00dfd\u0085\u009d,\u0094\u00d3\u00bez\u0089!\u00bc\u00c8\u00b5o\u00a7\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0016\u0000)\u00a7)NT\u00f5d\u009cGCl\u00eaw\u0091q8l\u00dfR\u0085\u009d,\u0087\u00d3\u0089z\u0092!\u00bc\u00c8\u00b5o\u00ac\u0016\u0096\u00bd\u00d1d\u00d4\u000b\u00cd\u00b2\u00cf\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0014\u0000!\u00a73NU\u00f5Y\u009c[CS\u00eaJ\u0091u8\u007f\u00dfa\u0085\u008a,\u0094\u00d3\u008dz\u0084!\u008e\u00c8\u00b9o\u00ac\u0016\u00a5\u00bd\u00d7\u000b\u00f9\u00ad*F+\u00ff \u0090.I\u0000\u00e2\u0005\u009b\u001d<\t\u00d5v\u008eN\'w\u00d8vqG*M\u00c3SdN\u001d\u00a7\u00b6\u00e4o\u00b6\u0000\u00b3\u00b9\u0086R\u00a9\u000b\u009e\u00ac\u0095E\u00f1\u00fe\u00ef\u0097\u00c0H\u00ff\u00e1\u00d5\u009a\u00cb3\u00c0\u00d4\u00de\u008e\'\'.\u00d8\u0004q3*\u0006\u00c3\u000fd\u001d.\t\u0088\u00dac\u00db\u00da\u00d0\u00b5\u00del\u00f0\u00c7\u00f5\u00be\u00ed\u0019\u00f9\u00f0\u0086\u00ab\u00be\u0002\u0087\u00fd\u0086T\u00b7\u000f\u00bd\u00e6\u00a3A\u00be8W\u0093\u0014JF%C\u009cvwY.n\u0089c`\u0011\u00db\u0011\u00b20m\u000f\u00c4%\u00bf;\u00160\u00f1.\u00ab\u00d7\u0002\u00de\u00fd\u00f4T\u00c3\u000f\u00f6\u00e6\u00ffA\u00ed\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0013\u0000\'\u00a7-NH\u00f5\\\u009cMCT\u00ea}\u0091B8m\u00dfw\u0085\u0099,\u0082\u00d3\u008cz\u0085!\u00bc\u00c8\u0086o\u00a1\u0016\u00a4\u00bd\u00ddd\u00df\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0014\u0000!\u00a73NH\u00f5\\\u009cICY\u00eaJ\u0091u8\u007f\u00dfa\u0085\u008a,\u0094\u00d3\u008dz\u0084!\u008e\u00c8\u00b9o\u00ac\u0016\u00a5\u00bd\u00d7\u00c5tc\u00a7\u0088\u00a61\u00ad^\u00a3\u0087\u008d,\u0088U\u0090\u00f2\u0084\u001b\u00fb@\u00c3\u00e9\u00fa\u0016\u00fb\u00bf\u00ca\u00e4\u00c0\r\u00de\u00aa\u00c3\u00d3*xi\u00a1(\u00ce>w\u0003\u009c\u000b\u00c5;b\u001e\u008b|0wYs\u0086v/VTq\u00fdV\u001aS@\u00aa\u00e9\u00a8\u0000C\u00a6\u0090M\u0091\u00f4\u009a\u009b\u0094B\u00ba\u00e9\u00bf\u0090\u00a77\u00b3\u00de\u00cc\u0085\u00f4,\u00cd\u00d3\u00ccz\u00fd!\u00f7\u00c8\u00e9o\u00f4\u0016\u001d\u00bd^d\u000c\u000b\t\u00b2<Y\u0013\u0000)\u00a7#NP\u00f5U\u009caCN\u00eaH\u0091|8i\u00dfy\u00d4\u00d4r\u0007\u0099\u0006 \rO\u0003\u0096-=(D0\u00e3$\n[Qc\u00f8Z\u0007[\u00aej\u00f5`\u001c~\u00bbc\u00c2\u008ai\u00c9\u00b0\u009b\u00df\u009ef\u00ab\u008d\u0081\u00d4\u00bes\u00be\u009a\u00c3!\u00f3H\u00d0\u0097\u00fb>\u00e0E\u00e6\u00ec\u00fb\u000b\u00deQ\u0001\u00f87\u0007\u0013\u00ae\u0016\u00f56\u00080\u00ae\u00e3E\u00e2\u00fc\u00e9\u0093\u00e7J\u00c9\u00e1\u00cc\u0098\u00d4?\u00c0\u00d6\u00bf\u008d\u0087$\u00be\u00db\u00bfr\u008e)\u0084\u00c0\u009ag\u0087\u001en\u00b5-l\u007f\u0003z\u00baOQj\u0008U\u00afZF?\u00fd*\u0094:K?\u00e2\u0002\u0099\u00190\u001e"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->a:[C

    const-wide v0, 0x45294382aa1ca6f8L    # 1.5270977189651724E25

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b:J

    return-void
.end method

.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/bi;Lcom/chartboost/sdk/ChartboostDelegate;Lcom/ironsource/adqualitysdk/sdk/i/ch;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    return-void
.end method

.method private a()Lcom/chartboost/sdk/ChartboostDelegate;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2b

    if-nez v0, :cond_1b

    const/16 v0, 0x2b

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x30

    :goto_1d
    if-eq v0, v2, :cond_20

    return-object v1

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    throw v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    throw v0
.end method

.method private static b(IIC)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/e;->ｋ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-array v1, p0, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    :goto_8
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    if-ge v2, p0, :cond_24

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/e;->ﾒ:I

    goto :goto_8

    :cond_24
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    return-object p0

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public didCacheInPlay(Ljava/lang/String;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x21

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    rsub-int v4, v4, 0x486

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    add-int/lit8 v10, v10, -0x1

    int-to-char v5, v10

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3d

    const/4 v3, 0x1

    :cond_3d
    if-eqz v3, :cond_4c

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInPlay(Ljava/lang/String;)V

    :cond_4c
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x46

    if-nez p1, :cond_5d

    const/16 p1, 0x15

    goto :goto_5f

    :cond_5d
    const/16 p1, 0x46

    :goto_5f
    if-ne p1, v0, :cond_62

    return-void

    :cond_62
    const/4 p1, 0x0

    :try_start_63
    throw p1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    throw p1
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x27

    const-string v4, ""

    invoke-static {v4}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x57

    const/16 v6, 0x30

    invoke-static {v4, v6, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    invoke-static {v3, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0xb

    if-eqz v0, :cond_35

    const/16 v2, 0x3b

    goto :goto_37

    :cond_35
    const/16 v2, 0xb

    :goto_37
    if-eq v2, v1, :cond_56

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-nez v1, :cond_4a

    const/16 v1, 0x24

    goto :goto_4c

    :cond_4a
    const/16 v1, 0x8

    :goto_4c
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    if-ne v1, v2, :cond_52

    goto :goto_56

    :cond_52
    const/4 p1, 0x0

    :try_start_53
    throw p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p1

    throw p1

    :cond_56
    :goto_56
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x23

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x19d

    const v5, -0xfff8fa

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0x24

    if-eqz v0, :cond_3d

    const/16 v2, 0x40

    goto :goto_3f

    :cond_3d
    const/16 v2, 0x24

    :goto_3f
    if-eq v2, v1, :cond_44

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheMoreApps(Ljava/lang/String;)V

    :cond_44
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x2b

    if-nez p1, :cond_55

    const/16 p1, 0x2b

    goto :goto_57

    :cond_55
    const/16 p1, 0x60

    :goto_57
    if-eq p1, v0, :cond_5a

    return-void

    :cond_5a
    const/4 p1, 0x0

    :try_start_5b
    throw p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p1

    throw p1
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x33f

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0x51

    if-eqz v0, :cond_41

    const/16 v2, 0x25

    goto :goto_43

    :cond_41
    const/16 v2, 0x51

    :goto_43
    if-eq v2, v1, :cond_52

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x27

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    add-int/lit16 v5, v5, 0xfb

    const/16 v6, 0x30

    invoke-static {v3, v6, v4, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int v3, v3, 0x51ee

    int-to-char v3, v3

    invoke-static {v2, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0x2a

    if-eqz v0, :cond_41

    const/16 v2, 0x24

    goto :goto_43

    :cond_41
    const/16 v2, 0x2a

    :goto_43
    if-eq v2, v1, :cond_67

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_52

    goto :goto_53

    :cond_52
    const/4 v4, 0x1

    :goto_53
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    if-eqz v4, :cond_63

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_67

    :cond_63
    const/4 p1, 0x0

    :try_start_64
    throw p1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception p1

    throw p1

    :cond_67
    :goto_67
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x3f

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    add-int/lit8 v8, v8, 0x22

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    rsub-int v2, v2, 0x257

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v9

    cmp-long v3, v9, v6

    add-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {v8, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_41

    const/16 v1, 0x38

    goto :goto_43

    :cond_41
    const/16 v1, 0x3f

    :goto_43
    if-eq v1, v4, :cond_6e

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0xf

    if-eqz v1, :cond_56

    const/16 v1, 0xf

    goto :goto_58

    :cond_56
    const/16 v1, 0x10

    :goto_58
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickMoreApps(Ljava/lang/String;)V

    if-eq v1, v2, :cond_5e

    goto :goto_61

    :cond_5e
    const/16 p1, 0x37

    :try_start_60
    div-int/2addr p1, v5
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_6c

    :goto_61
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_6e

    :catchall_6c
    move-exception p1

    throw p1

    :cond_6e
    :goto_6e
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x28

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x3e6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v4, v4, 0x2e4a

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0x39

    if-eqz v0, :cond_41

    const/16 v2, 0x39

    goto :goto_43

    :cond_41
    const/16 v2, 0x52

    :goto_43
    if-eq v2, v1, :cond_46

    goto :goto_68

    :cond_46
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2a

    if-eqz v1, :cond_57

    const/16 v1, 0x2a

    goto :goto_59

    :cond_57
    const/16 v1, 0x22

    :goto_59
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    if-eq v1, v2, :cond_69

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    :goto_68
    return-void

    :cond_69
    const/4 p1, 0x0

    :try_start_6a
    throw p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p1

    throw p1
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x27

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0xd4

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3b

    const/4 v3, 0x0

    :cond_3b
    if-eqz v3, :cond_3e

    goto :goto_4b

    :cond_3e
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseInterstitial(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    :goto_4b
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v6, 0x52

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    add-int/lit8 v8, v8, 0x22

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x235

    const v3, 0xdc94

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v8, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_37

    const/16 v1, 0x52

    goto :goto_39

    :cond_37
    const/16 v1, 0x40

    :goto_39
    if-eq v1, v6, :cond_3c

    goto :goto_5a

    :cond_3c
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2c

    if-nez v1, :cond_4d

    const/16 v1, 0x16

    goto :goto_4f

    :cond_4d
    const/16 v1, 0x2c

    :goto_4f
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseMoreApps(Ljava/lang/String;)V

    if-eq v1, v2, :cond_5a

    const/16 p1, 0x12

    :try_start_56
    div-int/2addr p1, v7
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_58

    goto :goto_5a

    :catchall_58
    move-exception p1

    throw p1

    :cond_5a
    :goto_5a
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x28

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x1

    cmp-long v10, v4, v6

    add-int/lit16 v10, v10, 0x3bd

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int v4, v4, 0xbba

    int-to-char v4, v4

    invoke-static {v3, v10, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_41

    const/16 v1, 0x38

    goto :goto_43

    :cond_41
    const/16 v1, 0x63

    :goto_43
    if-eq v1, v8, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseRewardedVideo(Ljava/lang/String;)V

    :goto_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/2addr p1, v9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public didCompleteInterstitial(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x2a

    const-string v3, ""

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    rsub-int v6, v6, 0x14a

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int v3, v3, 0xd25

    int-to-char v3, v3

    invoke-static {v2, v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, p0, v1, v2, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    if-eqz v3, :cond_54

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteInterstitial(Ljava/lang/String;)V

    if-eqz v1, :cond_4a

    const/4 p1, 0x7

    :try_start_46
    div-int/2addr p1, v5
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_48

    goto :goto_4a

    :catchall_48
    move-exception p1

    throw p1

    :cond_4a
    :goto_4a
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_54
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x2b

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    rsub-int v6, v6, 0x40e

    invoke-static {v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v5, 0x1

    :goto_40
    if-eqz v5, :cond_43

    goto :goto_5a

    :cond_43
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/2addr v2, v1

    const/16 v1, 0x41

    if-eqz v2, :cond_53

    const/16 v2, 0x41

    goto :goto_55

    :cond_53
    const/16 v2, 0x19

    :goto_55
    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    if-eq v2, v1, :cond_5b

    :goto_5a
    return-void

    :cond_5b
    const/4 p1, 0x0

    :try_start_5c
    throw p1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    throw p1
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    const/16 v4, 0x4f

    const/4 v5, 0x0

    cmpl-float v2, v3, v2

    add-int/lit8 v2, v2, 0x29

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    add-int/lit16 v3, v3, 0xab

    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3c

    const/16 v1, 0x13

    goto :goto_3e

    :cond_3c
    const/16 v1, 0x4f

    :goto_3e
    if-eq v1, v4, :cond_4d

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 p1, p1, 0x2

    :cond_4d
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, 0x210

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v8, 0x42

    cmp-long v9, v4, v6

    rsub-int v4, v9, 0x2899

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_39

    const/16 v1, 0x52

    goto :goto_3b

    :cond_39
    const/16 v1, 0x42

    :goto_3b
    if-eq v1, v8, :cond_54

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissMoreApps(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_54
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x30

    const-string v6, ""

    const/4 v7, 0x1

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x2a

    invoke-static {v6, v5, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    add-int/lit16 v4, v4, 0x395

    invoke-static {v6, v5, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    goto :goto_41

    :cond_3f
    const/16 v1, 0x3e

    :goto_41
    if-eq v1, v7, :cond_44

    goto :goto_51

    :cond_44
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 p1, p1, 0x2

    :goto_51
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v4, v4, 0x122

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    rsub-int v5, v5, 0x18c2

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3b

    const/4 v3, 0x1

    :cond_3b
    if-eqz v3, :cond_54

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    :cond_54
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x25

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    add-int/lit16 v4, v4, 0x27b

    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    if-eqz v1, :cond_53

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v3, 0x1

    :goto_49
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayMoreApps(Ljava/lang/String;)V

    if-ne v3, v4, :cond_4f

    goto :goto_53

    :cond_4f
    const/4 p1, 0x0

    :try_start_50
    throw p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    throw p1

    :cond_53
    :goto_53
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x29

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    add-int/lit16 v3, v3, 0x439

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    int-to-char v5, v5

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_5d

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_49

    const/4 v4, 0x1

    :cond_49
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    if-nez v4, :cond_59

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_5d

    :cond_59
    const/4 p1, 0x0

    :try_start_5a
    throw p1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    throw p1

    :cond_5d
    :goto_5d
    return-void
.end method

.method public didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x26

    const/16 v5, 0x30

    const-string v6, ""

    invoke-static {v6, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int v5, v5, 0x4a6

    const v6, 0xd497

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const/4 v3, 0x1

    aput-object p2, v5, v3

    invoke-virtual {v0, p0, v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v2, 0x55

    if-eqz v0, :cond_43

    const/16 v3, 0x55

    goto :goto_45

    :cond_43
    const/16 v3, 0x2f

    :goto_45
    if-eq v3, v2, :cond_48

    goto :goto_54

    :cond_48
    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/2addr p1, v1

    :goto_54
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 13

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x52

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    cmp-long v8, v2, v5

    add-int/lit8 v8, v8, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    cmp-long v9, v2, v5

    add-int/lit8 v9, v9, 0x7e

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    int-to-char v2, v2

    invoke-static {v8, v9, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3b

    const/16 v1, 0x61

    goto :goto_3d

    :cond_3b
    const/16 v1, 0x52

    :goto_3d
    if-eq v1, v4, :cond_4b

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/2addr p1, v7

    :cond_4b
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/2addr p1, v7

    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 16

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x28

    invoke-static {v4, v4}, Landroid/view/View;->getDefaultSize(II)I

    move-result v5

    rsub-int v5, v5, 0x1e8

    const v6, 0xc49d

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/16 v11, 0x16

    cmp-long v12, v7, v9

    sub-int/2addr v6, v12

    int-to-char v6, v6

    invoke-static {v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v4

    const/4 v4, 0x1

    aput-object p2, v5, v4

    invoke-virtual {v0, p0, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_45

    const/16 v2, 0x16

    goto :goto_47

    :cond_45
    const/16 v2, 0x1a

    :goto_47
    if-eq v2, v11, :cond_4a

    goto :goto_4d

    :cond_4a
    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :goto_4d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/2addr p1, v1

    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    rsub-int/lit8 v2, v2, 0x5d

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    add-int/lit16 v3, v3, 0x367

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    const/4 v4, 0x1

    aput-object p2, v5, v4

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0x5f

    if-eqz v0, :cond_36

    const/16 v2, 0x5f

    goto :goto_38

    :cond_36
    const/16 v2, 0x25

    :goto_38
    if-eq v2, v1, :cond_3b

    goto :goto_50

    :cond_3b
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/2addr v1, v3

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/2addr p1, v3

    :goto_50
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    cmpl-float v3, v3, v4

    add-int/lit8 v3, v3, 0x26

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    rsub-int v4, v4, 0x2a0

    invoke-static {v7}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v5

    int-to-char v7, v7

    invoke-static {v3, v4, v7}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v5

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_54

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/2addr v2, v1

    if-nez v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    if-nez v2, :cond_50

    goto :goto_54

    :cond_50
    const/4 p1, 0x0

    :try_start_51
    throw p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p1

    throw p1

    :cond_54
    :goto_54
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_60

    const/4 v5, 0x0

    :cond_60
    if-eqz v5, :cond_63

    return-void

    :cond_63
    const/16 p1, 0x1b

    :try_start_65
    div-int/2addr p1, v6
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_67

    return-void

    :catchall_67
    move-exception p1

    throw p1
.end method

.method public didInitialize()V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int v4, v4, 0x4cd

    const-string v5, ""

    invoke-static {v5, v5, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v5

    rsub-int v5, v5, 0x873

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didInitialize()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    :cond_42
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x7

    if-eqz v0, :cond_51

    const/4 v0, 0x7

    goto :goto_53

    :cond_51
    const/16 v0, 0x36

    :goto_53
    if-eq v0, v1, :cond_56

    return-void

    :cond_56
    const/4 v0, 0x0

    :try_start_57
    throw v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v0

    throw v0
.end method

.method public didPauseClickForConfirmation(Landroid/app/Activity;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x2f

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const/16 v7, 0x47

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, ""

    cmp-long v11, v3, v5

    add-int/lit16 v11, v11, 0x2c6

    const v3, 0xfc2e

    const/16 v4, 0x30

    invoke-static {v10, v4, v9, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-static {v2, v11, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v9

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_47

    const/16 v1, 0x47

    goto :goto_49

    :cond_47
    const/16 v1, 0x8

    :goto_49
    if-eq v1, v7, :cond_4c

    goto :goto_8d

    :cond_4c
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v9, v9}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1c

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    rsub-int v2, v6, 0x2f7

    invoke-static {v9, v9, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    rsub-int v3, v3, 0x79e

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_56 .. :try_end_8c} :catchall_8d

    return-void

    :catchall_8d
    :goto_8d
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2c

    invoke-static {v2, v2, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/lit8 v5, v5, 0x2c

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v4, v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x1

    :goto_2f
    if-eq v1, v4, :cond_4a

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayInterstitial(Ljava/lang/String;)Z

    move-result p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    return p1

    :cond_4a
    return v3
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    const/16 v4, 0x25

    const-string v5, ""

    const/4 v6, 0x0

    cmpl-float v2, v3, v2

    rsub-int/lit8 v2, v2, 0x28

    const/16 v3, 0x30

    invoke-static {v5, v3, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int v3, v3, 0x1bf

    invoke-static {v5, v5, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_40

    const/16 v1, 0x25

    goto :goto_42

    :cond_40
    const/16 v1, 0x50

    :goto_42
    if-eq v1, v4, :cond_45

    return v6

    :cond_45
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayMoreApps(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpl-float v4, v4, v5

    add-int/lit16 v4, v4, 0x311

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    add-int/lit16 v5, v5, 0x5a3e

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_35

    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    const/4 v1, 0x1

    :goto_36
    if-eq v1, v6, :cond_47

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayRewardedVideo(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_47
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 p1, p1, 0x2

    return v2
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .registers 9

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    rsub-int/lit8 v2, v2, 0x5c

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    const v4, 0xe91e

    const/4 v5, 0x0

    invoke-static {v5, v5, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0x4a

    if-eqz v0, :cond_3f

    const/16 v2, 0x4a

    goto :goto_41

    :cond_3f
    const/16 v2, 0x29

    :goto_41
    if-eq v2, v1, :cond_44

    return v5

    :cond_44
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v0, v0, 0x2

    return p1
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .registers 8

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x175

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-virtual {v0, p0, v1, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    const/16 v1, 0xc

    if-eqz v0, :cond_3d

    const/16 v2, 0x15

    goto :goto_3f

    :cond_3d
    const/16 v2, 0xc

    :goto_3f
    if-eq v2, v1, :cond_5a

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestMoreApps(Ljava/lang/String;)Z

    move-result p1

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v3, 0x1

    :goto_53
    if-eqz v3, :cond_56

    return p1

    :cond_56
    const/4 p1, 0x0

    :try_start_57
    throw p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception p1

    throw p1

    :cond_5a
    return v3
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->g:Lcom/ironsource/adqualitysdk/sdk/i/bi;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->f:Lcom/ironsource/adqualitysdk/sdk/i/ch;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x22

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x463

    const v5, 0xc536

    const/16 v6, 0x30

    const-string v7, ""

    invoke-static {v7, v6, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v0, p0, v1, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/az;->f(Lcom/ironsource/adqualitysdk/sdk/i/gy;Lcom/ironsource/adqualitysdk/sdk/i/ch;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->e:Lcom/chartboost/sdk/ChartboostDelegate;

    if-eqz v0, :cond_3e

    const/4 v1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    if-eq v1, v4, :cond_42

    goto :goto_5d

    :cond_42
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x19

    if-nez v1, :cond_53

    const/16 v1, 0x19

    goto :goto_54

    :cond_53
    const/4 v1, 0x7

    :goto_54
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->willDisplayVideo(Ljava/lang/String;)V

    if-eq v1, v3, :cond_5a

    goto :goto_5d

    :cond_5a
    const/16 p1, 0x59

    :try_start_5c
    div-int/2addr p1, v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5e

    :goto_5d
    return-void

    :catchall_5e
    move-exception p1

    throw p1
.end method

.method public final synthetic ﾇ()Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->a()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->d:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/bi$j;->c:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x5c

    if-eqz v1, :cond_1f

    const/16 v1, 0x5c

    goto :goto_21

    :cond_1f
    const/16 v1, 0x52

    :goto_21
    if-eq v1, v2, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    throw v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    throw v0
.end method
