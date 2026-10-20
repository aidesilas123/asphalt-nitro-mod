###### Class com.json.adqualitysdk.sdk.i.hg (com.ironsource.adqualitysdk.sdk.i.hg)
.class public Lcom/ironsource/adqualitysdk/sdk/i/hg;
.super Landroid/webkit/WebChromeClient;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/at$e;
.implements Lcom/ironsource/adqualitysdk/sdk/i/cg;


# static fields
.field private static a:[C = null

.field private static b:J = 0x0L

.field private static c:I = 0x0

.field private static d:I = 0x1


# instance fields
.field private e:Landroid/webkit/WebChromeClient;

.field private f:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x3ee

    new-array v1, v0, [C

    const-string v2, "\u00a0\u008c\u00c3\u0093f\u00e3\u0089\u001f,\u0007OH\u00f3\u00ba\u0016\u008d\u00b9\u00d6\u00dc\r\u007fu\u00e2]\u0006\u00a2\u00a9\u00fc\u00cc\u00d9o<\u0092n5EY\u009e\u00fc\u00fe\u001f>\u0082\u001e%jI\u00a2\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9[LJ\u00af\n\u0012\u00f5u\u00cd\u00d8\u0089<j\u009f5\u00020e\u00c8\u00c8\u00ac+\u0094\u008f@\u00f21U\u00e5\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9YL]\u00af\u0006\u0012\u00f7u\u00d6\u00d8\u009a<|\u009f\"\u0002\'e\u00c9\u00c8\u00b9+\u0096\u008fB\t=j\'\u00cfP \u0090\u0085\u00be\u00e6\u00b9Z\u001f\u00bf-\u00100u\u0080\u00d6\u00eeK\u00f5\u00af(\u0000Xe}\u00c6\u00af;\u00cd\u009c\u00eb\u00f07U]\u00b6\u00dc+\u00a6\u008c\u00c8\u00e0!E%\u00a6~\u001b\u008f|\u00ae\u00d1\u00e25\u0004\u0096Z\u000bBl\u00bb\u00c1\u00da\"\u00ec\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9YL]\u00af\u0006\u0012\u00f7u\u00d6\u00d8\u009a<|\u009f\"\u0002\'e\u00cf\u00c8\u00b8+\u0099\u008fO\u00f2\u001dU\u00e2\u00b8\u00c1\u001b\u00b5\u007f]\u00e2GE\u000e\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9XLP\u00af\n\u0012\u00e5u\u00fc\u00d8\u0099<j\u009f2\u0002\u001ce\u00cd\u00c8\u009b+\u0093\u008fB\u00f2#Y\u00e2:\u00f8\u009f\u008fpO\u00d5a\u00b6f\n\u00c0\u00ef\u00f2@\u00ef%_\u00861\u001b*\u00ff\u00f7P\u00875\u00a2\u0096pk\u0012\u00cc4\u00a0\u00e8\u0005\u0082\u00e6\u0003{y\u00dc\u0017\u00b0\u00e4\u0015\u00f6\u00f6\u00a6KP,[\u0081>e\u00cd\u00c6\u0095[\u00bb<j\u0091<r4\u00d6\u00e5\u00ab\u0084\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9HLJ\u00af\u0000\u0012\u00f3u\u00cb\u00d8\u0089<N\u009f/\u0002\u001de\u00c4\u00c8\u00a2+\u008d\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9YL]\u00af\u0014\u0012\u00e7u\u00da\u00d8\u009f<m\u009f\u0000\u0002\u001ce\u00c3\u00c8\u00b8+\u0089\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9HLT\u00af\n\u0012\u00e1u\u00da\u00d8\u00bb<p\u009f(\u0002\u0017e\u00cf\u00c8\u00ba\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9ALK\u00af$\u0012\u00feu\u00da\u00d8\u009e<m\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9ALK\u00af&\u0012\u00fdu\u00d1\u00d8\u008a<p\u009f4\u0002\u001e\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9ALK\u00af5\u0012\u00e0u\u00d0\u00d8\u0081<i\u009f2\u00f5F\u0096\\3+\u00dc\u00eby\u00c5\u001a\u00c2\u00a6dCV\u00ecK\u0089\u00fb*\u0095\u00b7\u008eSS\u00fc#\u0099\u0006:\u00d4\u00c7\u00b6`\u0090\u000cL\u00a9&J\u00a7\u00d7\u00ddp\u00b3\u001cB\u00b9HZ$\u00e7\u00f4\u0080\u00da-\u0080\u00c9hj \u00f7%\u0090\u00cd=\u00a2\u00de\u0096zE\u00073\u0084\u00cc\u00e7\u00d6B\u00a1\u00ada\u0008OkH\u00d7\u00ee2\u00dc\u009d\u00c1\u00f8q[\u001f\u00c6\u0004\"\u00d9\u008d\u00a9\u00e8\u008cK^\u00b6<\u0011\u001a}\u00c6\u00d8\u00ac;-\u00a6W\u00019m\u00c7\u00c8\u00c9+\u008f\u0096~\u00f1S\\\u0001\u00b8\u00f5\u001b\u00ab\u0086\u00be\u00e1HL0\u00af\u0012\u000b\u00ccv\u00bc\u00d1{<B\u009f\u0003\u00fb\u00f4f\u00d3\u00c1\u009f,g2vQl\u00f4\u001b\u001b\u00db\u00be\u00f5\u00dd\u00f2aT\u0084f+{N\u00cb\u00ed\u00a5p\u00be\u0094c;\u0013^6\u00fd\u00e4\u0000\u0086\u00a7\u00a0\u00cb|n\u0016\u008d\u0097\u0010\u00ed\u00b7\u0083\u00db\u007f~n\u009d9 \u00cdG\u00e3\u00ea\u00bc\u000eK\u00ad\u00010)W\u00fc\u00fa\u0090\u0019\u0099\u00bdq\u00c0\u0015g\u00df\u008a\u00f4)\u009bMH\u00d0ow>\u009a\u00d29\u00fc\\\u0089\u00e0M\u0007\u001f\u00aa4\u00c9\u00fel\u008b\u00f3\u00ab\u0017z\u00ba\u0012\u00d99\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9LL]\u00af\n\u0012\u00feu\u00d0\u00d8\u008f<x\u009f2\u0002\u001ae\u00cf\u00c8\u00a3+\u00aa\u008fB\u00f2&U\u00ec\u00b8\u00c7\u001b\u00a8\u007f{\u00e2\\E\r\u00a8\u00e1\u000b\u00cfn\u00a1\u00d2\u007f5\'\u0098\u0015\u00fb\u00cd^\u00b8\u00c1\u0098%I\u0088!\u00eb\nk\u0010\u0008\n\u00ad}B\u00bd\u00e7\u0093\u0084\u009482\u00dd\u0000r\u001d\u0017\u00ad\u00b4\u00c3)\u00d8\u00cd\u0005bu\u0007P\u00a4\u0082Y\u00e0\u00fe\u00c6\u0092\u001a7p\u00d4\u00f1I\u008b\u00ee\u00e5\u0082\u000e\'\u0008\u00c4By\u00aa\u001e\u0083\u00b3\u00caW?\u00f4ziI\u000e\u009b\u00a3\u00ca@\u00ca\u00e4\u0003\u0099t>\u00b1\u00d3\u0088p\u00fa\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9[L]\u00af\u0017\u0012\u00ffu\u00d6\u00d8\u009f<j\u009f/\u0002\u001ce\u00ce\u00c8\u009f+\u009f\u008fV\u00f2!U\u00e4\u00b8\u00dd\u001b\u00af\u007fK\u00e2TE\u000c\u00a8\u00ec\u000b\u00d9n\u0085\u00d2s5\'7|Tf\u00f1\u0011\u001e\u00d1\u00bb\u00ff\u00d8\u00f8d^\u0081l.qK\u00c1\u00e8\u00afu\u00b4\u0091i>\u0019[<\u00f8\u00ee\u0005\u008c\u00a2\u00aa\u00cevk\u001c\u0088\u009d\u0015\u00e7\u00b2\u0089\u00dex{r\u0098\u0008%\u00c2B\u00eb\u00ef\u00b0\u000bO\u00a8\n5>\u00c9p\u00aaj\u000f\u001d\u00e0\u00ddE\u00f3&\u00f4\u009aR\u007f`\u00d0}\u00b5\u00cd\u0016\u00a3\u008b\u00b8oe\u00c0\u0015\u00a50\u0006\u00e2\u00fb\u0080\\\u00a60z\u0095\u0010v\u0091\u00eb\u00ebL\u0085 }\u0085bf>\u00db\u00d4\u00bc\u00e5\u0011\u00b5\u00f5IV>\u00cb#\u00ac\u00e6\u0001\u008b\u00e2\u00aeFu;\u0004\rJnP\u00cb\'$\u00e7\u0081\u00c9\u00e2\u00ce^h\u00bbZ\u0014Gq\u00f7\u00d2\u0099O\u0082\u00ab_\u0004/a\n\u00c2\u00d8?\u00ba\u0098\u009c\u00f4@Q*\u00b2\u00ab/\u00d9\u0088\u00b4\u00e4pAs\u00a2\u000f\u001f\u00fbx\u00d1\u00d5\u00961z\u0092=\u000f*h\u00c6\u00c5\u00a6&\u0090\u0082G\u00ff\u000bX\u00e1\u00b5\u00d2\u0016\u00a0rb\u00efH\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00d6\u0085\u00bb\u00e9\u007fLn\u00af\u000c\u0012\u00f6u\u00da\u00d8\u0083<U\u009f)\u0002\u0012e\u00c4\u00c8\u00a4+\u0094\u008f@\u00f2\u0004U\u00f3\u00b8\u00c1\u001b\u00bc\u007fz\u00e2PE\u0011\u00a8\u00fc\u000b\u00ean\u0080\u00d2s54\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00d6\u0085\u00bb\u00e9\u007fLn\u00af\u000c\u0012\u00e1u\u00d6\u00d8\u0098<|\u009f\"\u0002;e\u00c9\u00c8\u00be+\u008e\u008fH\u00f2&U\u00f8\u0000Ec_\u00c6()\u00e8\u008c\u00c6\u00ef\u00c1Sg\u00b6U\u0019H|\u00f8\u00df\u0096B\u008d\u00a6P\t l\u0005\u00cf\u00d72\u00b5\u0095\u0093\u00f9O\\%\u00bf\u00a4\"\u00de\u0085\u00b0\u00e9XLP\u00af\n\u0012\u00e5u\u00f9\u00d8\u0085<u\u009f#\u00020e\u00c8\u00c8\u00a2+\u0095\u008fT\u00f21U\u00f3\u0000gcH\u00c6.)\u00d0\u008c\u00c6\u00ef\u0080S~\u00b6K\u0019\r|\u00f1\u00df\u0095B\u008a\u00a6~\t\nl\u001e\u00cf\u00d12\u00bf\u0095\u0090\u00f9O\\\u0014\u00bf\u00e8\"\u00d8\u0085\u00bb\u00e9eLL:[Yt\u00fc\u0012\u0013\u00ef\u00b6\u00ea\u00d5\u008aiW\u008ce#\u0017F\u00c1\u00e5\u008cx\u00bc\u009cM3\u0010V\t\u00f5\u00f3\u0008\u0085\u00af\u00a4\u00c3xf\u001f"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a:[C

    const-wide v0, 0x74a14dcca61e632dL    # 6.343229983726314E253

    sput-wide v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebChromeClient;Landroid/webkit/WebChromeClient;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method private static a(IIC)Ljava/lang/String;
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

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a:[C

    add-int v4, p1, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/ironsource/adqualitysdk/sdk/i/hg;->b:J

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

.method private b()Landroid/webkit/WebChromeClient;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    return-object v0

    :cond_15
    const/4 v0, 0x0

    :try_start_16
    throw v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    throw v0
.end method

.method private c()Ljava/lang/Object;
    .registers 3

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    return-object v0

    :cond_14
    const/4 v0, 0x0

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    throw v0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x2a

    if-eqz v0, :cond_17

    :try_start_f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    goto :goto_63

    :catchall_15
    move-exception v0

    goto :goto_1d

    :cond_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    throw v1
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_15

    :goto_1d
    const/16 v3, 0x30

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x17

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xa0db

    invoke-static {v4, v4, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    add-int/2addr v4, v7

    int-to-char v4, v4

    invoke-static {v3, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2a

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    rsub-int v6, v10, 0x31c

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    rsub-int v7, v7, 0xd0f

    int-to-char v7, v7

    invoke-static {v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_63
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_6a

    const/16 v3, 0x4e

    goto :goto_6c

    :cond_6a
    const/16 v3, 0x2a

    :goto_6c
    if-eq v3, v2, :cond_8b

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    if-eqz v2, :cond_7d

    const/4 v2, 0x7

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x4

    :goto_7e
    if-eq v2, v3, :cond_85

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_85
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    :try_start_88
    throw v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception v0

    throw v0

    :cond_8b
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_4f

    :catchall_7
    move-exception v1

    invoke-static {v0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmpl-float v2, v2, v3

    add-int/lit8 v2, v2, 0x18

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    rsub-int/lit8 v3, v3, -0x1

    const v6, 0xa0db

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    cmp-long v9, v7, v4

    add-int/2addr v9, v6

    int-to-char v6, v9

    invoke-static {v2, v3, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v3, v6, v4

    add-int/lit8 v3, v3, 0x2f

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit16 v4, v4, 0x345

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_4f
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v2, 0x45

    if-eqz v1, :cond_58

    const/16 v3, 0x45

    goto :goto_5a

    :cond_58
    const/16 v3, 0x1a

    :goto_5a
    const/4 v4, 0x1

    if-eq v3, v2, :cond_76

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v0, 0x1

    :goto_6f
    if-ne v0, v4, :cond_72

    return-object v1

    :cond_72
    const/4 v0, 0x0

    :try_start_73
    throw v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    throw v0

    :cond_76
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_84

    const/4 v2, 0x1

    goto :goto_85

    :cond_84
    const/4 v2, 0x0

    :goto_85
    if-eq v2, v4, :cond_8c

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_8c
    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x53

    :try_start_92
    div-int/2addr v2, v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_94

    return-object v1

    :catchall_94
    move-exception v0

    throw v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1f

    if-eqz v0, :cond_11

    const/16 v0, 0x1a

    goto :goto_13

    :cond_11
    const/16 v0, 0x1f

    :goto_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    :try_start_16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_66

    :cond_1c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    throw v2
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    const/high16 v4, -0x1000000

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0xa0db

    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, ""

    cmp-long v9, v4, v6

    add-int/lit8 v9, v9, 0x25

    const/16 v4, 0x30

    invoke-static {v8, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int v4, v4, 0x374

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v9, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_66
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_90

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x49

    if-eqz p1, :cond_88

    const/16 p1, 0x58

    goto :goto_8a

    :cond_88
    const/16 p1, 0x49

    :goto_8a
    if-ne p1, v0, :cond_8d

    return-void

    :cond_8d
    :try_start_8d
    throw v2
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p1

    throw p1

    :cond_90
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_51

    :catchall_11
    move-exception v1

    const-string v2, ""

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v2, v2, 0x140

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    int-to-char v5, v5

    invoke-static {v4, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_51
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/4 v2, 0x1

    if-eqz v1, :cond_57

    const/4 v0, 0x1

    :cond_57
    if-eq v0, v2, :cond_5d

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void

    :cond_5d
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_53

    :catchall_11
    move-exception v1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    const/16 v3, 0x30

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v4

    sub-int/2addr v3, v4

    const v4, 0xa0db

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x25

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    rsub-int v4, v4, 0x2f6

    const v5, 0xc936

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_53
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v2, 0x39

    if-eqz v1, :cond_5c

    const/16 v3, 0x39

    goto :goto_5e

    :cond_5c
    const/16 v3, 0x2e

    :goto_5e
    if-eq v3, v2, :cond_64

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_64
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_71

    const/4 v2, 0x0

    goto :goto_72

    :cond_71
    const/4 v2, 0x1

    :goto_72
    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_78

    return-void

    :cond_78
    const/16 p1, 0x4f

    :try_start_7a
    div-int/2addr p1, v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7c

    return-void

    :catchall_7c
    move-exception p1

    throw p1
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_18

    :try_start_12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    goto :goto_68

    :cond_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    const/16 v0, 0x58

    div-int/2addr v0, v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_21

    goto :goto_68

    :catchall_21
    move-exception v0

    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    const v4, 0xa0db

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v3, v4, v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v4, v7, v5

    add-int/lit16 v4, v4, 0x2f5

    const v5, 0xc905

    const/16 v6, 0x30

    invoke-static {v6}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v6

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_68
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v1, 0x58

    if-eqz v0, :cond_71

    const/16 v2, 0x1f

    goto :goto_73

    :cond_71
    const/16 v2, 0x58

    :goto_73
    if-eq v2, v1, :cond_84

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_84
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_57

    :catchall_12
    move-exception v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x17

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    rsub-int/lit8 v4, v4, 0x1

    const v5, 0xa0db

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x22

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit16 v5, v5, 0xfa

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_57
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v3, 0x39

    if-eqz v2, :cond_60

    const/16 v4, 0xf

    goto :goto_62

    :cond_60
    const/16 v4, 0x39

    :goto_62
    if-eq v4, v3, :cond_7e

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v3, v3, 0x43

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_71

    const/4 v0, 0x0

    :cond_71
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    if-eqz v0, :cond_78

    goto :goto_7b

    :cond_78
    const/16 p2, 0x4a

    :try_start_7a
    div-int/2addr p2, v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7c

    :goto_7b
    return p1

    :catchall_7c
    move-exception p1

    throw p1

    :cond_7e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v1, p0

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_23

    :try_start_e
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    const/16 v0, 0x4d

    div-int/2addr v0, v2

    goto :goto_34

    :cond_23
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_3f

    :goto_34
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_86

    :catchall_3f
    move-exception v0

    const-string v3, ""

    invoke-static {v3, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x18

    invoke-static {v3, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    const v5, 0xa0dc

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v4, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, 0x2c

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int v5, v5, 0x1e4

    const v6, 0x8489

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v6

    int-to-char v6, v7

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_86
    iget-object v5, v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/4 v0, 0x1

    if-eqz v5, :cond_8c

    const/4 v2, 0x1

    :cond_8c
    if-eq v2, v0, :cond_92

    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void

    :cond_92
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_ae

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v14, p9

    invoke-virtual/range {v5 .. v14}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void

    :cond_ae
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v14, p9

    invoke-virtual/range {v5 .. v14}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    const/4 v0, 0x0

    :try_start_be
    throw v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception v0

    move-object v2, v0

    throw v2
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    const/16 v1, 0x2f

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x45

    if-eqz v0, :cond_12

    const/16 v0, 0x45

    goto :goto_14

    :cond_12
    const/16 v0, 0xb

    :goto_14
    const/4 v3, 0x0

    if-eq v0, v2, :cond_1f

    :try_start_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_6d

    :catchall_1d
    move-exception v0

    goto :goto_28

    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    const/16 v0, 0x53

    div-int/2addr v0, v3
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_1d

    goto :goto_6d

    :goto_28
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x18

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    const v5, 0xa0db

    const-string v6, ""

    invoke-static {v6, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v7

    add-int/2addr v7, v5

    int-to-char v5, v7

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x30

    invoke-static {v6, v4, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    rsub-int v5, v9, 0x248

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_6d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_72

    goto :goto_73

    :cond_72
    const/4 v3, 0x1

    :goto_73
    if-eqz v3, :cond_79

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void

    :cond_79
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x21

    if-eqz v0, :cond_8b

    goto :goto_8d

    :cond_8b
    const/16 v1, 0x21

    :goto_8d
    if-ne v1, v2, :cond_90

    return-void

    :cond_90
    const/4 v0, 0x0

    :try_start_91
    throw v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v0

    throw v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1a

    :try_start_12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_65

    :catchall_18
    move-exception v0

    goto :goto_21

    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    const/4 v0, 0x0

    throw v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_18

    :goto_21
    const-string v2, ""

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x18

    const/4 v4, 0x0

    invoke-static {v1, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v5

    cmpl-float v5, v5, v4

    const v6, 0xa0da

    const/16 v7, 0x30

    invoke-static {v2, v7, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    sub-int/2addr v6, v2

    int-to-char v2, v6

    invoke-static {v3, v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const v3, 0x1000037

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v1, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    cmpl-float v3, v3, v4

    rsub-int v3, v3, 0x210

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    rsub-int v4, v4, 0x3233

    int-to-char v4, v4

    invoke-static {v5, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_65
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v1, 0x8

    if-eqz v0, :cond_6e

    const/16 v2, 0x8

    goto :goto_70

    :cond_6e
    const/16 v2, 0x4a

    :goto_70
    if-eq v2, v1, :cond_76

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void

    :cond_76
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public onHideCustomView()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_47

    :catchall_7
    move-exception v1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    invoke-static {v0, v0, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    const v4, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int v4, v4, 0xd5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    add-int/lit16 v5, v5, 0x59a7

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_47
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v2, 0x54

    if-eqz v1, :cond_50

    const/16 v3, 0x29

    goto :goto_52

    :cond_50
    const/16 v3, 0x54

    :goto_52
    if-eq v3, v2, :cond_62

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void

    :cond_62
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_72

    const/4 v0, 0x1

    :cond_72
    if-nez v0, :cond_75

    return-void

    :cond_75
    const/4 v0, 0x0

    :try_start_76
    throw v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v0

    throw v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1a

    :try_start_12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    goto :goto_60

    :catchall_18
    move-exception v0

    goto :goto_21

    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    const/4 v0, 0x0

    throw v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_18

    :goto_21
    invoke-static {v1, v1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x18

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    const v4, 0xa0db

    const-string v5, ""

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x1e

    const/16 v4, 0x30

    invoke-static {v5, v4}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit16 v4, v4, 0x163

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_60
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v1, 0x46

    if-eqz v0, :cond_69

    const/16 v2, 0x46

    goto :goto_6b

    :cond_69
    const/16 v2, 0x11

    :goto_6b
    if-eq v2, v1, :cond_7c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p2, p2, 0x67

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p2, p2, 0x2

    return p1

    :cond_7c
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_57

    :catchall_10
    move-exception v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x18

    const-string v2, ""

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    const v3, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    int-to-char v3, v4

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int v4, v4, 0x1bf

    const v5, 0xf503

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_57
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v1, 0x61

    if-eqz v0, :cond_60

    const/16 v2, 0x61

    goto :goto_62

    :cond_60
    const/16 v2, 0x37

    :goto_62
    if-eq v2, v1, :cond_69

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_69
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 p2, p2, 0x35

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 p2, p2, 0x2

    const/16 p3, 0x2e

    if-nez p2, :cond_7e

    const/16 p2, 0x34

    goto :goto_80

    :cond_7e
    const/16 p2, 0x2e

    :goto_80
    if-ne p2, p3, :cond_83

    return p1

    :cond_83
    const/4 p1, 0x0

    :try_start_84
    throw p1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception p1

    throw p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    if-nez v0, :cond_11

    const/16 v0, 0x29

    goto :goto_13

    :cond_11
    const/16 v0, 0xe

    :goto_13
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1f

    :try_start_16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    const/16 v0, 0x52

    div-int/2addr v0, v2

    goto :goto_6b

    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_25

    goto :goto_6b

    :catchall_25
    move-exception v0

    const/16 v1, 0x30

    const-string v3, ""

    invoke-static {v3, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    const v3, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v1, v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x20

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x180

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_6b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_70

    goto :goto_71

    :cond_70
    const/4 v2, 0x1

    :goto_71
    if-eqz v2, :cond_78

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_78
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 16

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_53

    :catchall_c
    move-exception v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, ""

    cmp-long v7, v2, v4

    add-int/lit8 v7, v7, 0x17

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    const v3, 0xa0db

    invoke-static {v6, v0}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-char v3, v6

    invoke-static {v7, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v6

    cmp-long v3, v6, v4

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    cmp-long v8, v6, v4

    add-int/lit16 v8, v8, 0x1a0

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v3, v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_53
    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v4, :cond_5a

    const/4 v2, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x0

    :goto_5b
    if-eq v2, v1, :cond_62

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    :cond_62
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v1, v1, 0x2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p2, p2, 0x33

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p2, p2, 0x2

    const/16 p3, 0x19

    if-eqz p2, :cond_86

    const/16 p2, 0x54

    goto :goto_88

    :cond_86
    const/16 p2, 0x19

    :goto_88
    if-eq p2, p3, :cond_90

    const/16 p2, 0x4e

    :try_start_8c
    div-int/2addr p2, v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8e

    return p1

    :catchall_8e
    move-exception p1

    throw p1

    :cond_90
    return p1
.end method

.method public onJsTimeout()Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_51

    :catchall_11
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x18

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    const v4, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/lit16 v4, v4, 0x2d6

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    rsub-int v5, v5, 0x3739

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_51
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_56

    goto :goto_57

    :cond_56
    const/4 v0, 0x1

    :goto_57
    if-eqz v0, :cond_5e

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    :cond_5e
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 10

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    :try_start_d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1d

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_68

    :catchall_1d
    move-exception v0

    goto :goto_26

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    const/4 v0, 0x0

    throw v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1d

    :goto_26
    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    const-string v4, ""

    cmpl-float v3, v3, v2

    rsub-int/lit8 v3, v3, 0x18

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const v6, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    sub-int/2addr v6, v7

    int-to-char v6, v6

    invoke-static {v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v4, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x28

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    rsub-int v5, v5, 0x27e

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    cmpl-float v2, v6, v2

    add-int/lit16 v2, v2, 0x6b54

    int-to-char v2, v2

    invoke-static {v4, v5, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_68
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/4 v2, 0x1

    if-eqz v0, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v1, 0x1

    :goto_6f
    if-eq v1, v2, :cond_7f

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    return-void

    :cond_7f
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_1a

    :try_start_12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_68

    :catchall_18
    move-exception v0

    goto :goto_21

    :cond_1a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    const/4 v0, 0x0

    throw v0
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_18

    :goto_21
    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x18

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/16 v7, 0x30

    const-string v8, ""

    cmp-long v9, v3, v5

    add-int/lit8 v9, v9, -0x1

    const v3, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v2, v9, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x30

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    rsub-int v4, v4, 0x2a6

    invoke-static {v8, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_68
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/16 v1, 0x1c

    if-eqz v0, :cond_71

    const/16 v2, 0x1c

    goto :goto_73

    :cond_71
    const/16 v2, 0x3d

    :goto_73
    if-eq v2, v1, :cond_83

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_83
    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x25

    if-nez v0, :cond_11

    const/16 v0, 0x25

    goto :goto_13

    :cond_11
    const/16 v0, 0x41

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_1e

    :try_start_18
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_67

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    throw v2
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    const-string v1, ""

    invoke-static {v1}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x19

    const/16 v6, 0x30

    invoke-static {v1, v6, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    add-int/2addr v7, v4

    const v8, 0xa0db

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v9

    add-int/2addr v9, v8

    int-to-char v8, v9

    invoke-static {v5, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    add-int/lit8 v7, v7, 0x26

    invoke-static {v1, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x17

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v6

    int-to-byte v6, v6

    add-int/2addr v6, v4

    int-to-char v6, v6

    invoke-static {v7, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_67
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_6c

    const/4 v3, 0x1

    :cond_6c
    if-eq v3, v4, :cond_72

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_72
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_82

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_82
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :try_start_85
    throw v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p1

    throw p1
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_47

    :catchall_7
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v2, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    const v5, 0xa0db

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    invoke-static {v2, v4, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-static {v0, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x62

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v5

    rsub-int v5, v5, 0x978

    int-to-char v5, v5

    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_47
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/4 v2, 0x1

    if-eqz v1, :cond_4e

    const/4 v3, 0x0

    goto :goto_4f

    :cond_4e
    const/4 v3, 0x1

    :goto_4f
    if-eq v3, v2, :cond_6a

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_66

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    const/16 p1, 0x31

    :try_start_62
    div-int/2addr p1, v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception p1

    throw p1

    :cond_66
    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void

    :cond_6a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7b

    const/4 p1, 0x1

    goto :goto_7c

    :cond_7b
    const/4 p1, 0x0

    :goto_7c
    if-eq p1, v2, :cond_7f

    return-void

    :cond_7f
    const/16 p1, 0x5c

    :try_start_81
    div-int/2addr p1, v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_83

    return-void

    :catchall_83
    move-exception p1

    throw p1
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x22

    if-nez v0, :cond_11

    const/16 v0, 0x22

    goto :goto_12

    :cond_11
    const/4 v0, 0x7

    :goto_12
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    :try_start_15
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_68

    :catchall_1b
    move-exception v0

    goto :goto_26

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/16 v0, 0x37

    div-int/2addr v0, v2
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_1b

    goto :goto_68

    :goto_26
    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    const-string v3, ""

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    const v5, 0xa0db

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v1, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    rsub-int/lit8 v4, v8, 0x23

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v5

    int-to-byte v5, v5

    rsub-int/lit8 v5, v5, 0x3d

    invoke-static {v3}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x1

    int-to-char v3, v3

    invoke-static {v4, v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_68
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_84

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_79

    goto :goto_7a

    :cond_79
    const/4 v2, 0x1

    :goto_7a
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz v2, :cond_80

    return-void

    :cond_80
    const/4 p1, 0x0

    :try_start_81
    throw p1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p1

    throw p1

    :cond_84
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_4b

    :catchall_7
    move-exception v1

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v2

    int-to-byte v2, v2

    rsub-int/lit8 v2, v2, 0x17

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    const v4, 0xa0db

    const-string v5, ""

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    add-int/lit8 v7, v7, 0x2c

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    add-int/lit16 v3, v3, 0x85

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {v7, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_4b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/4 v2, 0x0

    if-eqz v1, :cond_6c

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0xf

    if-nez p1, :cond_64

    const/16 p1, 0x63

    goto :goto_66

    :cond_64
    const/16 p1, 0xf

    :goto_66
    if-ne p1, p2, :cond_69

    return-void

    :cond_69
    :try_start_69
    throw v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    :catchall_6a
    move-exception p1

    throw p1

    :cond_6c
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7c

    const/4 v0, 0x1

    :cond_7c
    if-nez v0, :cond_7f

    return-void

    :cond_7f
    :try_start_7f
    throw v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    :catchall_80
    move-exception p1

    throw p1
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_8

    goto :goto_50

    :catchall_8
    move-exception v2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    const-string v5, ""

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    rsub-int/lit8 v3, v8, 0x19

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    rsub-int/lit8 v4, v4, 0x1

    const v8, 0xa0db

    invoke-static {v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    sub-int/2addr v8, v5

    int-to-char v5, v8

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x23

    invoke-static {v1, v1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    add-int/lit16 v5, v5, 0x11d

    invoke-static {v1, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v8

    cmp-long v10, v8, v6

    add-int/2addr v10, v0

    int-to-char v6, v10

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_50
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_56

    const/4 v3, 0x0

    goto :goto_57

    :cond_56
    const/4 v3, 0x1

    :goto_57
    if-eqz v3, :cond_67

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_67
    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_81

    const/4 v0, 0x0

    :cond_81
    if-eqz v0, :cond_84

    return-void

    :cond_84
    const/4 p1, 0x0

    :try_start_85
    throw p1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p1

    throw p1
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_19

    :try_start_13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_61

    :cond_19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    const/4 v0, 0x0

    throw v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x18

    const-string v4, ""

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v1

    const v6, 0xa0dc

    const/16 v7, 0x30

    invoke-static {v4, v7, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    add-int/2addr v7, v6

    int-to-char v6, v7

    invoke-static {v3, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x25

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    rsub-int v6, v6, 0xb0

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    invoke-static {v5, v6, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_61
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_80

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_76

    const/4 p1, 0x0

    goto :goto_77

    :cond_76
    const/4 p1, 0x1

    :goto_77
    if-eq p1, v1, :cond_7f

    const/16 p1, 0x41

    :try_start_7b
    div-int/2addr p1, v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7d

    return-void

    :catchall_7d
    move-exception p1

    throw p1

    :cond_7f
    return-void

    :cond_80
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 11

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1a

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_5d

    :catchall_1a
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x18

    const-string v3, ""

    invoke-static {v3}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const v4, 0xa0db

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-char v4, v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v3

    cmp-long v7, v3, v5

    rsub-int/lit8 v3, v7, 0x26

    invoke-static {v1, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    add-int/lit16 v4, v4, 0xb0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_5d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x6

    if-eqz v0, :cond_64

    const/4 v2, 0x6

    goto :goto_66

    :cond_64
    const/16 v2, 0x39

    :goto_66
    if-eq v2, v1, :cond_6c

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void

    :cond_6c
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->f:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_12

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_5a

    :catchall_12
    move-exception v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x18

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, ""

    cmp-long v9, v4, v6

    rsub-int/lit8 v4, v9, 0x1

    const v5, 0xa0dc

    const/16 v6, 0x30

    invoke-static {v8, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    add-int/2addr v6, v5

    int-to-char v5, v6

    invoke-static {v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v9, v4, v6

    rsub-int/lit8 v4, v9, 0x27

    invoke-static {v8, v1, v1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    rsub-int v5, v5, 0x39b

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_5a
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->e:Landroid/webkit/WebChromeClient;

    if-eqz v2, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v1, 0x1

    :goto_60
    if-eq v1, v0, :cond_83

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3a

    if-nez v0, :cond_73

    const/16 v0, 0x3a

    goto :goto_75

    :cond_73
    const/16 v0, 0x28

    :goto_75
    if-eq v0, v1, :cond_7c

    invoke-virtual {v2, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    :cond_7c
    invoke-virtual {v2, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    const/4 p1, 0x0

    :try_start_80
    throw p1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception p1

    throw p1

    :cond_83
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method

.method public abstract synthetic ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation
.end method

.method public abstract synthetic ﻐ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract synthetic ﻛ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation
.end method

.method public abstract synthetic ｋ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation
.end method

.method public abstract synthetic ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation
.end method

.method public abstract synthetic ﾇ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x5332f755

    const-wide/16 v1, 0x0

    const/16 v3, 0x30

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p3, v0, :cond_4e

    const v0, 0x55f3a00a

    if-eq p3, v0, :cond_18

    goto :goto_7f

    :cond_18
    invoke-static {v6, v6}, Landroid/view/View;->getDefaultSize(II)I

    move-result p3

    const/16 v0, 0x19

    add-int/2addr p3, v0

    invoke-static {v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    add-int/lit16 v3, v3, 0x3c2

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    cmp-long v4, v7, v1

    rsub-int/lit8 v1, v4, 0x1

    int-to-char v1, v1

    invoke-static {p3, v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x46

    if-eqz p1, :cond_4c

    const/16 v0, 0x46

    :cond_4c
    const/4 p2, 0x0

    goto :goto_7f

    :cond_4e
    invoke-static {v4, v3, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3da

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v7, v3, v1

    add-int/lit16 v7, v7, 0x3a3b

    int-to-char v1, v7

    invoke-static {p3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->a(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    const/4 v6, 0x1

    :cond_72
    if-eqz v6, :cond_7f

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hg;->d:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    :cond_7f
    :goto_7f
    if-eqz p2, :cond_8a

    if-eq p2, v5, :cond_85

    const/4 p1, 0x0

    return-object p1

    :cond_85
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8a
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hg;->b()Landroid/webkit/WebChromeClient;

    move-result-object p1

    return-object p1
.end method

.method public abstract synthetic ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;TT;)V"
        }
    .end annotation
.end method

.method public abstract synthetic ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TK;",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method
