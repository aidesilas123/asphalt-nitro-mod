###### Class com.facebook.ads.redexgen.X.TextureViewSurfaceTextureListenerC1092Il (com.facebook.ads.redexgen.X.Il)
.class public final Lcom/facebook/ads/redexgen/X/Il;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/facebook/ads/redexgen/X/QG;
.implements Lcom/facebook/ads/redexgen/X/QW;
.implements Lcom/facebook/ads/redexgen/X/QI;


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Landroid/net/Uri;

.field public A07:Landroid/view/Surface;

.field public A08:Landroid/view/View;

.field public A09:Landroid/widget/MediaController;

.field public A0A:Lcom/facebook/ads/redexgen/X/YA;

.field public A0B:Lcom/facebook/ads/redexgen/X/Pj;

.field public A0C:Lcom/facebook/ads/redexgen/X/QJ;

.field public A0D:Lcom/facebook/ads/redexgen/X/QY;

.field public A0E:Lcom/facebook/ads/redexgen/X/QY;

.field public A0F:Lcom/facebook/ads/redexgen/X/QZ;

.field public A0G:Ljava/lang/String;

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5i34yksohRV8hSvEB2dTOBGqhO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "V2RNkeamXobpzSRVkM4sjlG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1HR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8SLqGCa2wxiVkGjIaPVK9LXerY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SSmTkZgpl4jZsKBndOsNgmbhAq5FKejN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hgMiihLf1lx1lIiVFZ8jC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "euSTtDnbG06q2RqThlQcyR1Es6oMHQDw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iHXqYQoKvaPWKvo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Il;->A07()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Il;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Il;->A0P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0J:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A01:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0I:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0H:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0K:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0J:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A01:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0I:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0H:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0K:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0J:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A01:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0I:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0H:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0K:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Il;)Landroid/widget/MediaController;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Il;->A09:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Il;)Lcom/facebook/ads/redexgen/X/QJ;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Il;)Lcom/facebook/ads/redexgen/X/QZ;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0F:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Il;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QJ;->A0H(Lcom/facebook/ads/redexgen/X/QI;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QJ;->A0G(Lcom/facebook/ads/redexgen/X/QG;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0J:Z

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0I:Z

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_38

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_38
    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "kOzpobq3cn2ENPvO1dz11rE9gYrdsM2t"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "XeC6T5eSgweGxN3AGx0qK1AhpVQau6BW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_bc

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A09:Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A08:Landroid/view/View;

    if-nez v0, :cond_52

    move-object v0, p0

    :cond_52
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A09:Landroid/widget/MediaController;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QP;-><init>(Lcom/facebook/ads/redexgen/X/Il;)V

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_65
    :goto_65
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Il;->A0G:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_ad

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "7OzxCvlMe7OewOex"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_8d

    :goto_83
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0K:Z

    if-eqz v0, :cond_9a

    :cond_8d
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A06:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0F(Lcom/facebook/ads/redexgen/X/Y9;Landroid/net/Uri;)V

    :cond_9a
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A08:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcom/facebook/ads/redexgen/X/Il;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_ac
    return-void

    :cond_ad
    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "NXAVCVHzJxAz58YH1UEgH4PHy83Kp8aQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "f1ODdwAOeVqSGvJpvEMDUKedn4FgojKu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_8d

    goto :goto_83

    :cond_bc
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A09:Landroid/widget/MediaController;

    goto :goto_65
.end method

.method private A05()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A08()Lcom/facebook/ads/redexgen/X/QH;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "yniwio37QFCiL85s5GWvJngxgc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "95HbvmBBNGyB2bovEph22CE4vZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_36

    iget v1, v3, Lcom/facebook/ads/redexgen/X/QH;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/QH;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A08(II)V

    :cond_36
    return-void
.end method

.method private A06()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A07:Landroid/view/Surface;

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Il;->A07:Landroid/view/Surface;

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A09()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "he0jjWxzFB8qDestWT3k7cDZmQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "YQusGxI3ZRGEiRLtvLIlZ3cCdg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    :cond_32
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Il;->A09:Landroid/widget/MediaController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    return-void
.end method

.method public static A07()V
    .registers 3

    const/16 v0, 0xe2

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lcom/facebook/ads/redexgen/X/Il;->A0N:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_29

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "4Rjqxy3w03hT2rk3wOaPN94qCv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "J56YrdEaTg6GnpCj3tljjm9xxp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_30
    .array-data 1
        0x56t
        0x7et
        0x7et
        0x76t
        0x7dt
        0x74t
        0x31t
        0x70t
        0x7dt
        0x66t
        0x70t
        0x68t
        0x62t
        0x31t
        0x65t
        0x79t
        0x63t
        0x7et
        0x66t
        0x31t
        0x70t
        0x7ft
        0x31t
        0x74t
        0x69t
        0x72t
        0x74t
        0x61t
        0x65t
        0x78t
        0x7et
        0x7ft
        0x31t
        0x66t
        0x78t
        0x65t
        0x79t
        0x31t
        0x62t
        0x74t
        0x65t
        0x53t
        0x70t
        0x72t
        0x7at
        0x76t
        0x63t
        0x7et
        0x64t
        0x7ft
        0x75t
        0x55t
        0x63t
        0x70t
        0x66t
        0x70t
        0x73t
        0x7dt
        0x74t
        0x31t
        0x7et
        0x7ft
        0x31t
        0x5ft
        0x7et
        0x64t
        0x76t
        0x70t
        0x65t
        0x31t
        0x70t
        0x73t
        0x7et
        0x67t
        0x74t
        0x3ft
        0x31t
        0x62t
        0x7et
        0x31t
        0x66t
        0x74t
        0x31t
        0x62t
        0x78t
        0x7dt
        0x74t
        0x7ft
        0x65t
        0x7dt
        0x68t
        0x31t
        0x78t
        0x76t
        0x7ft
        0x7et
        0x63t
        0x74t
        0x31t
        0x78t
        0x65t
        0x3ft
        0x4ct
        0x64t
        0x64t
        0x6ct
        0x67t
        0x6et
        0x2bt
        0x6at
        0x67t
        0x7ct
        0x6at
        0x72t
        0x78t
        0x2bt
        0x7ft
        0x63t
        0x79t
        0x64t
        0x7ct
        0x2bt
        0x6at
        0x65t
        0x2bt
        0x6et
        0x73t
        0x68t
        0x6et
        0x7bt
        0x7ft
        0x62t
        0x64t
        0x65t
        0x2bt
        0x7ct
        0x62t
        0x7ft
        0x63t
        0x2bt
        0x78t
        0x6et
        0x7ft
        0x4dt
        0x64t
        0x79t
        0x6et
        0x6ct
        0x79t
        0x64t
        0x7et
        0x65t
        0x6ft
        0x2bt
        0x64t
        0x65t
        0x2bt
        0x45t
        0x64t
        0x7et
        0x6ct
        0x6at
        0x7ft
        0x2bt
        0x6at
        0x69t
        0x64t
        0x7dt
        0x6et
        0x25t
        0x2bt
        0x78t
        0x64t
        0x2bt
        0x7ct
        0x6et
        0x2bt
        0x78t
        0x62t
        0x67t
        0x6et
        0x65t
        0x7ft
        0x67t
        0x72t
        0x2bt
        0x62t
        0x6ct
        0x65t
        0x64t
        0x79t
        0x6et
        0x2bt
        0x62t
        0x7ft
        0x25t
        0x21t
        0x1et
        0x13t
        0x12t
        0x18t
        0x57t
        0x4t
        0x3t
        0x16t
        0x3t
        0x12t
        0x57t
        0x14t
        0x1ft
        0x16t
        0x19t
        0x10t
        0x12t
        0x13t
        0x57t
        0x3t
        0x18t
        0x57t
        0x5ft
        0x5dt
        0x56t
        0x5dt
        0x4at
        0x51t
        0x5bt
    .end array-data
.end method

.method private A08(II)V
    .registers 4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A03:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-eq p2, v0, :cond_13

    :cond_8
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A03:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->requestLayout()V

    :cond_13
    return-void
.end method

.method public static A09()Z
    .registers 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    return v0
.end method

.method private setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    if-eq p1, v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc4

    const/16 v1, 0x17

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2a
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    if-ne p1, v0, :cond_33

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    :cond_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0F:Lcom/facebook/ads/redexgen/X/QZ;

    if-eqz v0, :cond_3a

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QZ;->ADX(Lcom/facebook/ads/redexgen/X/QY;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public final synthetic A0A()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->A8G()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_2c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "ibP83lPIHp18E6DzSXuO582r7E"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "bqS8XhAkEDMP7WptTe4caNAUJi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A8G()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0H:Z

    if-nez v0, :cond_9

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->ADk(ZI)V

    :cond_9
    return-void
.end method

.method public final A8R()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0K()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final A8S()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    return v0
.end method

.method public final A8z()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    return v0
.end method

.method public final ACR(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->AA7(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A33(I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A1N:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, p2}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0xdb

    const/4 v1, 0x7

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return-void
.end method

.method public final ACS(ZI)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_5

    return-void

    :cond_5
    packed-switch p2, :pswitch_data_c0

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_8

    :pswitch_f
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Il;->A05()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A01:I

    if-ltz v0, :cond_8

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Il;->A01:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A01:I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Il;->A0F:Lcom/facebook/ads/redexgen/X/QZ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "rrPXv2FoHSgfFGcrQjG2fRVM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->getCurrentPosition()I

    move-result v0

    invoke-interface {v3, v4, v0}, Lcom/facebook/ads/redexgen/X/QZ;->ACs(II)V

    goto :goto_8

    :pswitch_40
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Il;->A05()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A04:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:F

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setRequestedVolume(F)V

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Il;->A05:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-lez v0, :cond_69

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A07()J

    move-result-wide v1

    cmp-long v0, v5, v1

    if-gez v0, :cond_69

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A05:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0D(J)V

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Il;->A05:J

    :cond_69
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A06()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_7f

    if-nez p1, :cond_7f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_8

    :cond_7f
    if-nez p1, :cond_8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_8

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    goto/16 :goto_8

    :pswitch_9f
    if-eqz p1, :cond_a6

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    :cond_a6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    const/4 v1, 0x0

    if-eqz v0, :cond_b5

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    if-nez p1, :cond_b5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0A()V

    :cond_b5
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0M:Z

    goto/16 :goto_8

    :cond_b9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_40
        :pswitch_9f
    .end packed-switch
.end method

.method public final ADV(IIIF)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Il;->A08(II)V

    return-void
.end method

.method public final ADk(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0S;->A2z(I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v1, :cond_18

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    :goto_17
    return-void

    :cond_18
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_17
.end method

.method public final AFc(I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->AA8(I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A09:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->AFo(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A05:J

    return-void
.end method

.method public final AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/0S;->A3A(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A06:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setup(Landroid/net/Uri;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A07:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_2e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_2e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_1b

    :cond_2e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0I(Z)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A0A:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    goto :goto_1b
.end method

.method public final AFo(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->A3C(I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A0B()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A09()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    :cond_1c
    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    return-void
.end method

.method public final destroy()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Il;->A06()V

    return-void
.end method

.method public getCurrentPosition()I
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A06()J

    move-result-wide v1

    long-to-int v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getDuration()I
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A07()J

    move-result-wide v1

    long-to-int v0, v1

    return v0
.end method

.method public getInitialBufferTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A04:J

    return-wide v0
.end method

.method public getStartReason()Lcom/facebook/ads/redexgen/X/Pj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/QY;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    return-object v0
.end method

.method public getTargetState()Lcom/facebook/ads/redexgen/X/QY;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0E:Lcom/facebook/ads/redexgen/X/QY;

    return-object v0
.end method

.method public getVideoHeight()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    return v0
.end method

.method public getVideoWidth()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A03:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getVolume()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:F

    return v0
.end method

.method public final onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A29(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A03:Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setVideoState(Lcom/facebook/ads/redexgen/X/QY;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->AFo(I)V

    :cond_1d
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_7
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A07:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0E(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_26

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    if-nez v0, :cond_26

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v0, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_26
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A07:Landroid/view/Surface;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A07:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0E(Landroid/view/Surface;)V

    :cond_11
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_36

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "TScQzo9LVHiM3saFvXTgi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x5

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Il;->ADk(ZI)V

    :cond_36
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 12

    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A08:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->getCurrentPosition()I

    move-result v0

    int-to-long v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->getVolume()F

    move-result v9

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Il;->A0F:Lcom/facebook/ads/redexgen/X/QZ;

    if-eqz v2, :cond_2a

    invoke-interface/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/QZ;->ABQ(JJJF)V

    :cond_2a
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A09:Landroid/widget/MediaController;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    if-nez p1, :cond_41

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_3c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

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

    new-instance v2, Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/QO;-><init>(Lcom/facebook/ads/redexgen/X/Il;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->A8G()V

    goto :goto_3c

    :cond_41
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_3c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0L:Z

    if-nez v0, :cond_3c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0B:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->AFh(Lcom/facebook/ads/redexgen/X/Pj;I)V

    goto :goto_3c
.end method

.method public final seekTo(I)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Il;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A01:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/QJ;->A0D(J)V

    :goto_10
    return-void

    :cond_11
    int-to-long v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "kfjJwAtkK1UY2s6fcoM3d"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Il;->A05:J

    goto :goto_10

    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
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

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "HF5JdwiOlRNKOfaOH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A0P:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x66

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setBackgroundPlaybackEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0H:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A08:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QR;-><init>(Lcom/facebook/ads/redexgen/X/Il;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 7

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

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A0P:Ljava/lang/String;

    const/16 v4, 0x66

    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Il;->A0O:[Ljava/lang/String;

    const-string v1, "adR4uJi1AjYNmamYU7fKdN8LPQzpuqJY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LCKmfGi2Ka9VnYBnqFwdGZK0MZJmec2m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v1, 0x5e

    const/16 v0, 0x4f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Il;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public setFullScreen(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0J:Z

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0I:Z

    if-nez v0, :cond_10

    new-instance v0, Lcom/facebook/ads/redexgen/X/QQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QQ;-><init>(Lcom/facebook/ads/redexgen/X/Il;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Il;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    return-void
.end method

.method public setRequestedVolume(F)V
    .registers 4

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A00:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A08:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_17

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0D:Lcom/facebook/ads/redexgen/X/QY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A04:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QJ;->A0C(F)V

    :cond_17
    return-void
.end method

.method public setTestMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0K:Z

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0G:Ljava/lang/String;

    return-void
.end method

.method public setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/QZ;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A0F:Lcom/facebook/ads/redexgen/X/QZ;

    return-void
.end method

.method public setup(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0A:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A32()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Il;->A0C:Lcom/facebook/ads/redexgen/X/QJ;

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Il;->A06()V

    :cond_10
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Il;->A06:Landroid/net/Uri;

    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/Il;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Il;->A04()V

    return-void
.end method
