###### Class com.facebook.ads.redexgen.X.TextureViewSurfaceTextureListenerC1090Ij (com.facebook.ads.redexgen.X.Ij)
.class public final Lcom/facebook/ads/redexgen/X/Ij;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/QW;


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/media/MediaPlayer;

.field public A07:Landroid/net/Uri;

.field public A08:Landroid/view/Surface;

.field public A09:Landroid/view/View;

.field public A0A:Landroid/widget/MediaController;

.field public A0B:Lcom/facebook/ads/redexgen/X/Pj;

.field public A0C:Lcom/facebook/ads/redexgen/X/QY;

.field public A0D:Lcom/facebook/ads/redexgen/X/QY;

.field public A0E:Lcom/facebook/ads/redexgen/X/QZ;

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:J

.field public final A0L:Landroid/widget/MediaController$MediaPlayerControl;

.field public final A0M:Lcom/facebook/ads/redexgen/X/YA;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "w6W1Pn4pGSy1veXw7fNic4Q20vJelJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "acNB2lhq8cVPZLtYghlcj8euurSBcqdx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "I2BPPFoGG3lXsTKKPy2FKKasdsM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uMMu8699SI696vicAGdUyhB1Kjcnsg5D"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S7aPtd9QGtmzyQ9VrNW20IwmaDF5p1Ml"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zS648UlhjTBJXulz7NmFsyAIwaw2iCpI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZyXsHo9oibpczWLkt42IpHWLTZevRgPI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "euMEykkwaXnS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ij;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:F

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0H:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0F:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0J:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0G:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QT;-><init>(Lcom/facebook/ads/redexgen/X/Ij;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:F

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0H:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0F:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0J:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0G:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QT;-><init>(Lcom/facebook/ads/redexgen/X/Ij;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:F

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0H:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0F:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0J:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0G:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QT;-><init>(Lcom/facebook/ads/redexgen/X/Ij;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ij;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ij;)Landroid/widget/MediaController;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ij;)Lcom/facebook/ads/redexgen/X/QZ;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x72

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x191

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ij;->A0N:[B

    return-void

    :array_a
    .array-data 1
        0x59t
        0x57t
        0x5bt
        0x59t
        0x1et
        0x3t
        0xft
        0x9t
        0x1at
        0x59t
        0x5bt
        0x41t
        0x5bt
        0x59t
        0x39t
        0x66t
        0x69t
        0x4bt
        0x44t
        0x44t
        0x45t
        0x5et
        0xat
        0x5at
        0x58t
        0x4ft
        0x5at
        0x4bt
        0x58t
        0x4ft
        0xat
        0x47t
        0x4ft
        0x4et
        0x43t
        0x4bt
        0xat
        0x5at
        0x46t
        0x4bt
        0x53t
        0x4ft
        0x58t
        0xat
        0x5dt
        0x43t
        0x5et
        0x42t
        0xat
        0x79t
        0x5ft
        0x58t
        0x4ct
        0x4bt
        0x49t
        0x4ft
        0x7et
        0x4ft
        0x52t
        0x5et
        0x5ft
        0x58t
        0x4ft
        0x10t
        0xat
        0x2dt
        0x1t
        0x1bt
        0x2t
        0xat
        0x0t
        0x49t
        0x1at
        0x4et
        0x1ct
        0xbt
        0x1at
        0x1ct
        0x7t
        0xbt
        0x18t
        0xbt
        0x4et
        0x18t
        0x7t
        0xat
        0xbt
        0x1t
        0x4et
        0x7t
        0x0t
        0x8t
        0x1t
        0x1ct
        0x3t
        0xft
        0x1at
        0x7t
        0x1t
        0x0t
        0x5dt
        0x7at
        0x72t
        0x77t
        0x7et
        0x7ft
        0x3bt
        0x6ft
        0x74t
        0x3bt
        0x74t
        0x6bt
        0x7et
        0x75t
        0x3bt
        0x7at
        0x68t
        0x68t
        0x7et
        0x6ft
        0x68t
        0xft
        0x27t
        0x27t
        0x2ft
        0x24t
        0x2dt
        0x68t
        0x29t
        0x24t
        0x3ft
        0x29t
        0x31t
        0x3bt
        0x68t
        0x3ct
        0x20t
        0x3at
        0x27t
        0x3ft
        0x68t
        0x29t
        0x26t
        0x68t
        0x2dt
        0x30t
        0x2bt
        0x2dt
        0x38t
        0x3ct
        0x21t
        0x27t
        0x26t
        0x68t
        0x3ft
        0x21t
        0x3ct
        0x20t
        0x68t
        0x3bt
        0x2dt
        0x3ct
        0xat
        0x29t
        0x2bt
        0x23t
        0x2ft
        0x3at
        0x27t
        0x3dt
        0x26t
        0x2ct
        0xct
        0x3at
        0x29t
        0x3ft
        0x29t
        0x2at
        0x24t
        0x2dt
        0x68t
        0x27t
        0x26t
        0x68t
        0x6t
        0x27t
        0x3dt
        0x2ft
        0x29t
        0x3ct
        0x68t
        0x29t
        0x2at
        0x27t
        0x3et
        0x2dt
        0x66t
        0x68t
        0x3bt
        0x27t
        0x68t
        0x3ft
        0x2dt
        0x68t
        0x3bt
        0x21t
        0x24t
        0x2dt
        0x26t
        0x3ct
        0x24t
        0x31t
        0x68t
        0x21t
        0x2ft
        0x26t
        0x27t
        0x3at
        0x2dt
        0x68t
        0x21t
        0x3ct
        0x66t
        0x32t
        0x1at
        0x1at
        0x12t
        0x19t
        0x10t
        0x55t
        0x14t
        0x19t
        0x2t
        0x14t
        0xct
        0x6t
        0x55t
        0x1t
        0x1dt
        0x7t
        0x1at
        0x2t
        0x55t
        0x14t
        0x1bt
        0x55t
        0x10t
        0xdt
        0x16t
        0x10t
        0x5t
        0x1t
        0x1ct
        0x1at
        0x1bt
        0x55t
        0x2t
        0x1ct
        0x1t
        0x1dt
        0x55t
        0x6t
        0x10t
        0x1t
        0x33t
        0x1at
        0x7t
        0x10t
        0x12t
        0x7t
        0x1at
        0x0t
        0x1bt
        0x11t
        0x55t
        0x1at
        0x1bt
        0x55t
        0x3bt
        0x1at
        0x0t
        0x12t
        0x14t
        0x1t
        0x55t
        0x14t
        0x17t
        0x1at
        0x3t
        0x10t
        0x5bt
        0x55t
        0x6t
        0x1at
        0x55t
        0x2t
        0x10t
        0x55t
        0x6t
        0x1ct
        0x19t
        0x10t
        0x1bt
        0x1t
        0x19t
        0xct
        0x55t
        0x1ct
        0x12t
        0x1bt
        0x1at
        0x7t
        0x10t
        0x55t
        0x1ct
        0x1t
        0x5bt
        0x2t
        0x39t
        0x36t
        0x35t
        0x3bt
        0x32t
        0x77t
        0x23t
        0x38t
        0x77t
        0x34t
        0x3bt
        0x38t
        0x24t
        0x32t
        0x16t
        0x31t
        0x2at
        0x63t
        0x30t
        0x2bt
        0x2ct
        0x36t
        0x2ft
        0x27t
        0x63t
        0x2dt
        0x2ct
        0x37t
        0x63t
        0x21t
        0x26t
        0x63t
        0x26t
        0x2et
        0x33t
        0x37t
        0x3at
        0x6dt
        0x35t
        0xat
        0x7t
        0x6t
        0xct
        0x43t
        0x10t
        0x17t
        0x2t
        0x17t
        0x6t
        0x43t
        0x0t
        0xbt
        0x2t
        0xdt
        0x4t
        0x6t
        0x7t
        0x43t
        0x17t
        0xct
        0x43t
        0x61t
        0x73t
        0x73t
        0x65t
        0x74t
        0x53t
        0x4ft
        0x42t
        0x5at
        0x46t
        0x51t
        0x7et
        0x27t
        0x72t
        0x6dt
        0x64t
        0x71t
        0x27t
        0x25t
        0x3ft
        0x25t
        0x27t
    .end array-data
.end method

.method private final A05(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 16

    const/16 v2, 0x13d

    const/16 v1, 0xf

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :try_start_b
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    if-eqz v6, :cond_79
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_38} :catch_4e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_4c
    .catchall {:try_start_b .. :try_end_38} :catchall_7a

    :try_start_38
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_79
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_73

    :cond_3c
    :try_start_3c
    const/16 v2, 0x14c

    const/16 v1, 0x18

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_4c} :catch_4e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4c} :catch_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_7a

    :catch_4c
    move-exception v5

    goto :goto_4f

    :catch_4e
    move-exception v5

    :goto_4f
    :try_start_4f
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    const/16 v2, 0x64

    const/16 v1, 0x15

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A33(I)V

    if-eqz v6, :cond_79
    :try_end_6f
    .catchall {:try_start_4f .. :try_end_6f} :catchall_7a

    :try_start_6f
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_79
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_73} :catch_73

    :catch_73
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_79
    :goto_79
    return-void

    :catchall_7a
    move-exception v2

    if-eqz v6, :cond_87

    :try_start_7d
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_87
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_81

    :catch_81
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_87
    :goto_87
    throw v2
.end method

.method private A06()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A08:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A07()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_18

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_18

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_18

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private A08()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A08:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A09()Z
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_6

    return v6

    :cond_6
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x1

    return v0
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_b

    :catch_b
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A2G:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x180

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return v6
.end method

.method private A0A(Landroid/view/Surface;)Z
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    if-nez v0, :cond_6

    return v6

    :cond_6
    :try_start_6
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    const/4 v0, 0x1

    return v0
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_b

    :catch_b
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A2H:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x180

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return v6
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Ij;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0G:Z

    return p0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    if-eq p1, v0, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x164

    const/16 v1, 0x17

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2a
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    if-eqz v0, :cond_33

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QZ;->ADX(Lcom/facebook/ads/redexgen/X/QY;)V

    :cond_33
    return-void
.end method


# virtual methods
.method public final synthetic A0C()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A8G()V

    return-void
.end method

.method public final A8G()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0F:Z

    if-nez v0, :cond_9

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->ADk(ZI)V

    :cond_9
    return-void
.end method

.method public final A8R()Z
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    if-eqz v0, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-ge v1, v0, :cond_c

    :cond_b
    return v9

    :cond_c
    const/4 v8, 0x1

    :try_start_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v6, :cond_46

    aget-object v0, v7, v5

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1c} :catch_47

    move-result v4

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_33

    goto :goto_40

    :cond_33
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "iSqF26gJBktCMb0RObgKl91oEThpz7Z0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_3d

    return v8

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :goto_40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_46
    return v9

    :catch_47
    move-exception v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    const/16 v2, 0x41

    const/16 v1, 0x23

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method

.method public final A8S()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0J:Z

    return v0
.end method

.method public final A8z()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    return v0
.end method

.method public final ADk(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0S;->A2z(I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A06()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_18
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_30

    :cond_1e
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_30

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public final AFc(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->AA8(I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A09:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    return-void
.end method

.method public final AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0S;->A3A(I)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_43

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_43

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_96

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "NTKGPTGyq7PSuZ6pDxSrkOD3BAS3oRMw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v4, v0, :cond_43

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_43

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_4c

    :cond_43
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-nez v1, :cond_7a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setup(Landroid/net/Uri;)V

    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_6f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "Wn6W9Nu3dNfA4pP49CdphRQGwehyl3Rd"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/Ij;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "pXleF17jKjib"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3, v3}, Lcom/facebook/ads/redexgen/X/Ij;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_6e

    :cond_7a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    if-lez v0, :cond_81

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_81
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_90

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0J:Z

    if-eqz v0, :cond_4c

    :cond_90
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_4c

    :cond_96
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFo(I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->A3C(I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_19

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    :cond_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_52

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "KulxFUFqA4xnUTvaQLfyg7cstmOjzycv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A09()Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_4c
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    return-void

    :cond_52
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final destroy()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_35

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ij;->A0A(Landroid/view/Surface;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A09()Z

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    :cond_35
    return-void
.end method

.method public getCurrentPosition()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A07()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    :cond_11
    return v1
.end method

.method public getDuration()I
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A07()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "tqb6wmVqQGZxPylUtz2fkCIx7Bf2WilJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2d

    :cond_2b
    const/4 v0, 0x0

    return v0

    :cond_2d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitialBufferTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0K:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/Pj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/QY;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/QY;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getVolume()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:F

    return v0
.end method

.method public final isHardwareAccelerated()Z
    .registers 2

    invoke-super {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public final onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A33(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFo(I)V

    :cond_1d
    return-void
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->seekTo(I)V

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x186

    const/16 v1, 0xb

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/4 v1, 0x2

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/0S;->AA7(Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:I

    const/4 v2, 0x1

    if-lez v0, :cond_60

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getState()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_60

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A01:I

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFo(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :goto_5f
    return v2

    :cond_60
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/0S;->A33(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFo(I)V

    goto :goto_5f
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 9

    sparse-switch p2, :sswitch_data_6c

    :cond_3
    :goto_3
    const/4 v0, 0x0

    return v0

    :sswitch_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A02:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_3

    :sswitch_b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A08()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "BctcOQJYgBcKf8RdBMRoW9O8jkER1gO3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "NFF5b4NOHp1wMQpQtAU8ibXMpYWuxgZg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_3

    :sswitch_3d
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0J:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_66

    sget-object v3, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_67

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "iL0L5EQxu2M5tvy2sZDjl5tOkB9wsg4Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qEr4cYtmjtQdjlZthk5xBRgssZbq5gW6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    :cond_66
    :goto_66
    return v4

    :cond_67
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_66

    nop

    :sswitch_data_6c
    .sparse-switch
        0x3 -> :sswitch_3d
        0x2bd -> :sswitch_5
        0x2be -> :sswitch_b
    .end sparse-switch
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0H:Z

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0G:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_52

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A09:Landroid/view/View;

    if-nez v0, :cond_21

    move-object v0, p0

    :cond_21
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0L:Landroid/widget/MediaController$MediaPlayerControl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_3c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "fPjFRSSzuUrY85KdwEQXHAUI7gq3zgJX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "QlnNj2Zi0n3XZkktRetea07zoE6PUgNL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    goto :goto_55

    :cond_52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    :cond_55
    :goto_55
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setRequestedVolume(F)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    if-lez v1, :cond_7e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_75

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    :cond_75
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    :cond_7e
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v3, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_aa

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "i4HMjCzdRtS7Zf5jyUfqsJgJBFC3Hgk3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "nPyigXhxANl12gOwrMulZJ84NGYQcgH1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_a9

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_a9
    return-void

    :cond_aa
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->ACs(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Landroid/view/Surface;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Landroid/view/Surface;

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0A(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A33(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->destroy()V

    return-void

    :cond_26
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_36

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    if-nez v0, :cond_36

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_36
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ij;->A0A(Landroid/view/Surface;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Landroid/view/Surface;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Landroid/view/Surface;

    :cond_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_18

    const/4 v1, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->ADk(ZI)V

    :cond_18
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_2d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "wJEag4Up5dB02EoPbWjrYUJlPYnnpJPt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 13

    move-object v3, p0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A07()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ij;->A0O:[Ljava/lang/String;

    const-string v1, "zsAx7U2aKSd2GPuux6v5Um4uWviEPJCj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_30

    :cond_2f
    return-void

    :cond_30
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getCurrentPosition()I

    move-result v0

    int-to-long v6, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getVolume()F

    move-result v10

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/Ij;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    if-eqz v3, :cond_49

    invoke-interface/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/QZ;->ABQ(JJJF)V

    :cond_49
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A05:I

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->requestLayout()V

    :cond_15
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Landroid/widget/MediaController;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    if-nez p1, :cond_41

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_3d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/QS;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/QS;-><init>(Lcom/facebook/ads/redexgen/X/Ij;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A8G()V

    goto :goto_3c

    :cond_41
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_3c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0I:Z

    if-nez v0, :cond_3c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V

    goto :goto_3c
.end method

.method public final seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A07()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_1f

    if-lez p1, :cond_1f

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A02:I

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A03:I

    goto :goto_1f
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    const/16 v2, 0x79

    const/16 v1, 0x66

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0F:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A09:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QV;-><init>(Lcom/facebook/ads/redexgen/X/Ij;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/TextureView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    const/16 v2, 0xdf

    const/16 v1, 0x5e

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setFullScreen(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0H:Z

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0G:Z

    if-nez v0, :cond_10

    new-instance v0, Lcom/facebook/ads/redexgen/X/QU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QU;-><init>(Lcom/facebook/ads/redexgen/X/Ij;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    return-void
.end method

.method public setRequestedVolume(F)V
    .registers 4

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A00:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A08:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_17

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0C:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_17
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QZ;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0E:Lcom/facebook/ads/redexgen/X/QZ;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A32()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0J:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A07:Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ij;->A09()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0A(Landroid/view/Surface;)Z

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_26

    :cond_21
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    :goto_26
    :try_start_26
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x17b

    const/4 v1, 0x5

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Ij;->A05(Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    :goto_3c
    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Landroid/media/MediaPlayer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A08:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_9a

    :cond_5f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_3c
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_67} :catch_67

    :catch_67
    move-exception v6

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ij;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A33(I)V

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ij;->A0P:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x10

    const/16 v1, 0x31

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9a
    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Ij;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ij;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v5}, Lcom/facebook/ads/redexgen/X/Ij;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_aa
    return-void
.end method
