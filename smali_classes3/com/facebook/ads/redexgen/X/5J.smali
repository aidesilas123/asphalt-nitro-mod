###### Class com.facebook.ads.redexgen.X.C5J (com.facebook.ads.redexgen.X.5J)
.class public final Lcom/facebook/ads/redexgen/X/5J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;
.implements Lcom/facebook/ads/internal/context/Repairable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5G;,
        Lcom/facebook/ads/redexgen/X/EB;,
        Lcom/facebook/ads/redexgen/X/Yt;,
        Lcom/facebook/ads/redexgen/X/5I;,
        Lcom/facebook/ads/redexgen/X/5H;
    }
.end annotation


# static fields
.field public static A0O:[B

.field public static A0P:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Landroid/content/Intent;

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/redexgen/X/Jq;

.field public A08:Lcom/facebook/ads/redexgen/X/Lu;

.field public A09:Lcom/facebook/ads/redexgen/X/MR;

.field public A0A:Lcom/facebook/ads/redexgen/X/NJ;

.field public A0B:Lcom/facebook/ads/redexgen/X/PK;

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/lang/String;

.field public A0E:Ljava/lang/String;

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A0L:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A0M:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/5H;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6hyfNvrTK6t0uOk4ZUiKTcly4lO9QIT3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Cx5XWQG9gTlQcsVl0OO6K9WlulTSTZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4fLDdlgMQ2q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AM05mUF2qaDkDYU3MyDNTK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rN7iVf06fBiMXo1UDWoI2bEJDxOmVmjv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9bqAz3M9pAQkcUJXzFdGLS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1D1uNCEUmAwDpqE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "h0QQnxfLOYpp7kAK6sPhgGYv8wQTA65G"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5J;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0N:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A01:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0F:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5J;->A0L:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5Q;->A01(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/YA;->A0H(Lcom/facebook/ads/internal/context/Repairable;)V

    return-void
.end method

.method private A00()I
    .registers 4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x2

    return v0

    :cond_f
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->top:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_22

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/5J;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private A02(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/Lu;
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v6

    new-instance v3, Lcom/facebook/ads/redexgen/X/5G;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/5G;-><init>(Lcom/facebook/ads/redexgen/X/5J;Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/5F;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    const/4 v2, 0x0

    if-nez v0, :cond_16

    return-object v2

    :cond_16
    sget-object v1, Lcom/facebook/ads/redexgen/X/5F;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jq;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_d4

    return-object v2

    :pswitch_24
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/5G;->A0E(Lcom/facebook/ads/redexgen/X/5G;Landroid/widget/RelativeLayout;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_2b
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A08(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_42

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_42
    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "9AjKOltSNiH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    :pswitch_4a
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A09(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_4f
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A0A(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_54
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A0B(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_59
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A0C(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_5e
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A0D(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_63
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A03(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_7b

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "wwrXZHO6We2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_7b
    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "bd05r2lrBXgQHiU8zhW56DndFWzJq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :pswitch_83
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A04(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_88
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A05(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_a1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "st3v0TpfdqXoPWlO02nQcse4uCAIapoF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_a1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_a7
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A06(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_ac
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5G;->A07(Lcom/facebook/ads/redexgen/X/5G;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_c7

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "x"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_c7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_cd
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/5G;->A0F(Lcom/facebook/ads/redexgen/X/5G;Lcom/facebook/ads/redexgen/X/Jq;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v0

    return-object v0

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2b
        :pswitch_4a
        :pswitch_4f
        :pswitch_54
        :pswitch_59
        :pswitch_5e
        :pswitch_63
        :pswitch_83
        :pswitch_88
        :pswitch_a7
        :pswitch_ac
        :pswitch_cd
        :pswitch_cd
    .end packed-switch
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/5J;)Lcom/facebook/ads/redexgen/X/NJ;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/5J;)Lcom/facebook/ads/redexgen/X/PK;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0O:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0E:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/PJ;->A01(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    if-eqz v0, :cond_1b

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0B:Lcom/facebook/ads/redexgen/X/PK;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    return-void
.end method

.method private A07()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_21

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/5E;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/5E;-><init>(Lcom/facebook/ads/redexgen/X/5J;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    return-void
.end method

.method private A08()V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0I:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0I()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A03:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0I:Z

    :cond_16
    return-void

    :cond_17
    const/16 v2, 0x8b

    const/16 v1, 0x30

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static A09()V
    .registers 1

    const/16 v0, 0x207

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/5J;->A0O:[B

    return-void

    :array_a
    .array-data 1
        -0x3t
        0x26t
        0x47t
        0x44t
        0x57t
        0x49t
        -0x24t
        -0xbt
        -0x18t
        -0x17t
        -0xdt
        -0x14t
        -0x59t
        -0x5t
        -0xat
        -0x59t
        -0x10t
        -0xbt
        -0x13t
        -0x14t
        -0x7t
        -0x59t
        -0x3t
        -0x10t
        -0x14t
        -0x2t
        -0x25t
        0x0t
        -0x9t
        -0x14t
        -0x59t
        -0x13t
        -0x7t
        -0xat
        -0xct
        -0x59t
        -0x10t
        -0xbt
        -0x5t
        -0x14t
        -0xbt
        -0x5t
        -0x59t
        -0xat
        -0x7t
        -0x59t
        -0x6t
        -0x18t
        -0x3t
        -0x14t
        -0x15t
        -0x30t
        -0xbt
        -0x6t
        -0x5t
        -0x18t
        -0xbt
        -0x16t
        -0x14t
        -0x26t
        -0x5t
        -0x18t
        -0x5t
        -0x14t
        -0xct
        0x1t
        -0xet
        -0xct
        -0xat
        0x7t
        -0x4t
        0x9t
        -0x4t
        0x7t
        0xct
        -0x2ct
        -0x23t
        -0x26t
        -0x2at
        -0x21t
        -0x1bt
        -0x3bt
        -0x20t
        -0x24t
        -0x2at
        -0x21t
        0x1t
        0xdt
        0xbt
        -0x34t
        0x4t
        -0x1t
        0x1t
        0x3t
        0x0t
        0xdt
        0xdt
        0x9t
        -0x34t
        -0x1t
        0x2t
        0x11t
        -0x34t
        -0x1t
        0x2t
        0x10t
        0x3t
        0xet
        0xdt
        0x10t
        0x12t
        0x7t
        0xct
        0x5t
        -0x34t
        -0x1ct
        -0x19t
        -0x14t
        -0x19t
        -0xft
        -0x1at
        -0x3t
        -0x21t
        -0x1et
        -0x3t
        -0x10t
        -0x1dt
        -0x12t
        -0x13t
        -0x10t
        -0xet
        -0x19t
        -0x14t
        -0x1bt
        -0x3t
        -0x1ct
        -0x16t
        -0x13t
        -0xbt
        -0x20t
        -0x14t
        -0x16t
        -0x55t
        -0x1dt
        -0x22t
        -0x20t
        -0x1et
        -0x21t
        -0x14t
        -0x14t
        -0x18t
        -0x55t
        -0x22t
        -0x1ft
        -0x10t
        -0x55t
        -0x1at
        -0x15t
        -0xft
        -0x1et
        -0x11t
        -0x10t
        -0xft
        -0x1at
        -0xft
        -0x1at
        -0x22t
        -0x17t
        -0x55t
        -0x22t
        -0x20t
        -0xft
        -0x1at
        -0xdt
        -0x1at
        -0xft
        -0xat
        -0x24t
        -0x1ft
        -0x1et
        -0x10t
        -0xft
        -0x11t
        -0x14t
        -0xat
        -0x1et
        -0x1ft
        0xft
        0x1bt
        0x19t
        -0x26t
        0x12t
        0xdt
        0xft
        0x11t
        0xet
        0x1bt
        0x1bt
        0x17t
        -0x26t
        0xdt
        0x10t
        0x1ft
        -0x26t
        0x15t
        0x1at
        0x20t
        0x11t
        0x1et
        0x1ft
        0x20t
        0x15t
        0x20t
        0x15t
        0xdt
        0x18t
        -0x26t
        0x10t
        0x15t
        0x1ft
        0x19t
        0x15t
        0x1ft
        0x1ft
        0x11t
        0x10t
        -0x17t
        -0xbt
        -0xdt
        -0x4ct
        -0x14t
        -0x19t
        -0x17t
        -0x15t
        -0x18t
        -0xbt
        -0xbt
        -0xft
        -0x4ct
        -0x19t
        -0x16t
        -0x7t
        -0x4ct
        -0x11t
        -0xct
        -0x6t
        -0x15t
        -0x8t
        -0x7t
        -0x6t
        -0x11t
        -0x6t
        -0x11t
        -0x19t
        -0xet
        -0x4ct
        -0x16t
        -0x11t
        -0x7t
        -0xat
        -0xet
        -0x19t
        -0x1t
        -0x15t
        -0x16t
        0x10t
        0x1ct
        0x1at
        -0x25t
        0x13t
        0xet
        0x10t
        0x12t
        0xft
        0x1ct
        0x1ct
        0x18t
        -0x25t
        0xet
        0x11t
        0x20t
        -0x25t
        0x16t
        0x1bt
        0x21t
        0x12t
        0x1ft
        0x20t
        0x21t
        0x16t
        0x21t
        0x16t
        0xet
        0x19t
        -0x25t
        0x12t
        0x1ft
        0x1ft
        0x1ct
        0x1ft
        0x36t
        0x42t
        0x40t
        0x1t
        0x39t
        0x34t
        0x36t
        0x38t
        0x35t
        0x42t
        0x42t
        0x3et
        0x1t
        0x34t
        0x37t
        0x46t
        0x1t
        0x3ct
        0x41t
        0x47t
        0x38t
        0x45t
        0x46t
        0x47t
        0x3ct
        0x47t
        0x3ct
        0x34t
        0x3ft
        0x1t
        0x39t
        0x3ct
        0x41t
        0x3ct
        0x46t
        0x3bt
        0x32t
        0x34t
        0x36t
        0x47t
        0x3ct
        0x49t
        0x3ct
        0x47t
        0x4ct
        0x4bt
        0x57t
        0x55t
        0x16t
        0x4et
        0x49t
        0x4bt
        0x4dt
        0x4at
        0x57t
        0x57t
        0x53t
        0x16t
        0x49t
        0x4ct
        0x5bt
        0x16t
        0x51t
        0x56t
        0x5ct
        0x4dt
        0x5at
        0x5bt
        0x5ct
        0x51t
        0x5ct
        0x51t
        0x49t
        0x54t
        0x16t
        0x51t
        0x55t
        0x58t
        0x5at
        0x4dt
        0x5bt
        0x5bt
        0x51t
        0x57t
        0x56t
        0x16t
        0x54t
        0x57t
        0x4ft
        0x4ft
        0x4dt
        0x4ct
        0x2at
        0x3bt
        0x2at
        0x33t
        0x39t
        0x44t
        0x39t
        0x46t
        0x3ct
        0x4bt
        0x3bt
        0x39t
        0x48t
        0x3dt
        0xft
        0x7t
        0x6t
        0xbt
        0x3t
        0x16t
        0xbt
        0x11t
        0x10t
        -0x1at
        0x3t
        0x16t
        0x3t
        -0x7t
        -0xbt
        -0x16t
        -0x14t
        -0x12t
        -0xat
        -0x12t
        -0x9t
        -0x3t
        -0x2et
        -0x13t
        0x57t
        0x56t
        0x59t
        0x5bt
        0x59t
        0x48t
        0x50t
        0x5bt
        0x4ct
        0x4et
        0x41t
        0x40t
        0x41t
        0x42t
        0x45t
        0x4at
        0x41t
        0x40t
        0x2bt
        0x4et
        0x45t
        0x41t
        0x4at
        0x50t
        0x3dt
        0x50t
        0x45t
        0x4bt
        0x4at
        0x27t
        0x41t
        0x55t
        -0x8t
        -0x15t
        -0x9t
        -0x5t
        -0x15t
        -0x7t
        -0x6t
        -0x26t
        -0x11t
        -0xdt
        -0x15t
        0x2ct
        0x24t
        0x22t
        0x29t
        -0x6t
        0x1ft
        0x2dt
        0x1et
        0x2bt
        0xct
        0x1et
        0x1ct
        0x28t
        0x27t
        0x1dt
        0x2ct
        -0xct
        -0x11t
        -0x21t
        -0x11t
        -0xet
        -0x17t
        -0x1bt
        -0x12t
        -0xct
        -0x1ft
        -0xct
        -0x17t
        -0x11t
        -0x12t
        0x39t
        0x32t
        0x2dt
        0x35t
        0x39t
        0x29t
        0xdt
        0x28t
        0x5at
        0x4dt
        0x49t
        0x5bt
        0x38t
        0x5dt
        0x54t
        0x49t
    .end array-data
.end method

.method private A0A(Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A12(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Jq;->A02:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_b7

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "ROWUzhbvPevH2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_b6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_b6

    new-instance v0, Lcom/facebook/ads/redexgen/X/NJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NJ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    const/16 v2, 0x1a3

    const/16 v1, 0xb

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NJ;->A0C(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->A0B(Ljava/lang/String;)V

    const/16 v2, 0x1ce

    const/16 v1, 0xb

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/NJ;->A09(J)V

    :cond_66
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0xa0

    const/4 v0, 0x0

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/5I;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/5I;-><init>(Lcom/facebook/ads/redexgen/X/5J;Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_b6
    return-void

    :cond_b7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 9

    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    const/16 v2, 0x1b6

    const/16 v1, 0x18

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_40

    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/KN;->A02(Landroid/os/Bundle;Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A01:I

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0C:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    return-void

    :cond_40
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A01:I

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0C:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    const/16 v2, 0x1d9

    const/16 v1, 0x10

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A02:I

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/5J;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/5J;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1X;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5J;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1X;)V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/5J;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5J;->A0H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V

    return-void
.end method

.method private A0F(Ljava/lang/String;)V
    .registers 7

    const/16 v2, 0x159

    const/16 v1, 0x2f

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_1d

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A0A:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/5J;->A0H:Z

    :cond_1f
    const/16 v2, 0x109

    const/16 v1, 0x23

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A09:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_48

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_48
    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "BsUqgJlN3izr4734FAkiK4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "DZ4pb9dksBh2p0w2isnwDh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5a
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/5J;->A0G:Z

    :cond_5c
    const/16 v2, 0x56

    const/16 v1, 0x35

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->finish(I)V

    return-void

    :cond_72
    const/16 v2, 0x12c

    const/16 v1, 0x2d

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->finish(I)V

    return-void

    :cond_88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V

    return-void
.end method

.method private A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1X;)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A09:Lcom/facebook/ads/redexgen/X/MR;

    if-nez v0, :cond_2a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    const/4 v0, 0x0

    new-instance v6, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v6, p0, v0}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(Lcom/facebook/ads/redexgen/X/5J;Lcom/facebook/ads/redexgen/X/5F;)V

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/MS;->A02(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1X;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/Lt;)Lcom/facebook/ads/redexgen/X/TO;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A09:Lcom/facebook/ads/redexgen/X/MR;

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A09:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/MR;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A09:Lcom/facebook/ads/redexgen/X/MR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0T(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A09:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A09:Lcom/facebook/ads/redexgen/X/MR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MR;->A0K()V

    return-void
.end method

.method private A0H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0C:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_32

    const/16 v2, 0x188

    const/4 v1, 0x5

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_32
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2c;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2c;->A07(Landroid/content/Intent;)Z

    return-void
.end method

.method private A0I()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0F:Lcom/facebook/ads/redexgen/X/Jq;

    if-eq v1, v0, :cond_1e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0E:Lcom/facebook/ads/redexgen/X/Jq;

    if-eq v1, v0, :cond_1e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    if-eq v1, v0, :cond_1e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A04:Lcom/facebook/ads/redexgen/X/Jq;

    if-eq v1, v0, :cond_1e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0D:Lcom/facebook/ads/redexgen/X/Jq;

    if-ne v1, v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public final A0J()Lcom/facebook/ads/AudienceNetworkActivity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    return-object v0
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/YA;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    return-object v0
.end method

.method public final A0L()V
    .registers 4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0I()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A09:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const/16 v2, 0x109

    const/16 v1, 0x23

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public final synthetic A0M()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A00()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A9k(I)V

    :cond_15
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/5H;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0N:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/5H;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0N:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KV;->A00()Lcom/facebook/ads/redexgen/X/KU;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KU;->overrideDumpsys(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_21

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "QxWYw7ht1er43uY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_27

    return-void

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0L:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final finish(I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/0S;->A2Y(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0H:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0G:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->AAD()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0L()V

    :cond_3a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0I()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0F:Z

    if-nez v0, :cond_56

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pm;->A05:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    :goto_4d
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A08()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0L:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->finish(I)V

    return-void

    :cond_56
    const/16 v2, 0xbb

    const/16 v1, 0x27

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    goto :goto_4d
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Lu;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/TJ;->A09(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackPressed()V
    .registers 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/5J;->A03:J

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/5J;->A04:J

    sub-long v0, v7, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/5J;->A03:J

    iput-wide v7, p0, Lcom/facebook/ads/redexgen/X/5J;->A04:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A02:I

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_38

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5H;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5H;->A8k()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    goto :goto_1d

    :cond_31
    if-nez v2, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0L:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onBackPressed()V

    :cond_38
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    iget v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_45

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    const/16 v2, 0x1e9

    const/16 v1, 0xe

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v3

    if-ne v6, v5, :cond_4b

    const/16 v2, 0x1ae

    const/16 v1, 0x8

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    sget-object v3, Lcom/facebook/ads/redexgen/X/Im;->A0K:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-nez v0, :cond_46

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v1

    :goto_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    invoke-static {v3, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A02(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A07()V

    :cond_45
    return-void

    :cond_46
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lu;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_4b
    const/16 v2, 0x18d

    const/16 v1, 0x9

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LX;->A02()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v3, 0x1000000

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "7njofUp2AYjKONZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_37
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KN;->A01(Landroid/content/Intent;Ljava/lang/ClassLoader;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A05:Landroid/content/Intent;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KN;->A03(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v2

    if-eqz v2, :cond_61

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YA;->A0F(Lcom/facebook/ads/redexgen/X/0S;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/7S;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7S;->A0C(Ljava/lang/String;)V

    :cond_61
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2Z(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v0, 0x400

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/5J;->A0B(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A02(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/Lu;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-nez v1, :cond_db

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0A:I

    const/4 v2, 0x6

    const/16 v1, 0x3a

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x40

    const/16 v1, 0xb

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0L()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->finish(I)V

    return-void

    :cond_db
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A05:Landroid/content/Intent;

    invoke-interface {v1, v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Lu;->A9C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5J;)V

    const/16 v2, 0xe2

    const/16 v1, 0x27

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0F(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A04:J

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5J;->A05:Landroid/content/Intent;

    const/16 v2, 0x196

    const/16 v1, 0xd

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0E:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A06()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A05:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0A(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A00:I

    const/16 v2, 0x4b

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_148

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0D:Ljava/lang/String;

    :goto_12c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_147
    return-void

    :cond_148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A05:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0D:Ljava/lang/String;

    goto :goto_12c
.end method

.method public final onDestroy()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5J;->A08()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A06:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_1f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lu;->onDestroy()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_40

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_40
    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "BK5JyIukG"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    :cond_4a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_93

    if-eqz v3, :cond_6f

    :goto_62
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A12(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0A:Lcom/facebook/ads/redexgen/X/NJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NJ;->A07()V

    :cond_6f
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5J;->A09:Lcom/facebook/ads/redexgen/X/MR;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_90

    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "rHb3ILEFnyWtMYiOwcguj0"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "XKBHK5KZoSEcfbvzOM5yLt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_8f

    :goto_8c
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/MR;->A0J()V

    :cond_8f
    return-void

    :cond_90
    if-eqz v3, :cond_8f

    goto :goto_8c

    :cond_93
    sget-object v2, Lcom/facebook/ads/redexgen/X/5J;->A0P:[Ljava/lang/String;

    const-string v1, "VoJV9dI9dal5KZ60JkB8i5Bpps"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_6f

    goto :goto_62
.end method

.method public final onPause()V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2b(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/5J;->A03:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A04:J

    sub-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/5J;->A03:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-eqz v1, :cond_46

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->ACJ(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v3, Lcom/facebook/ads/redexgen/X/Im;->A0E:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lu;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;->A02(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0J:Z

    :cond_46
    return-void
.end method

.method public final onResume()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2c(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A04:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-eqz v1, :cond_39

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->ACj(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0J:Z

    if-eqz v0, :cond_39

    sget-object v3, Lcom/facebook/ads/redexgen/X/Im;->A0F:Lcom/facebook/ads/redexgen/X/Im;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lu;->getCurrentClientToken()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;->A02(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    :cond_39
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-eqz v0, :cond_c

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Lu;->AEt(Landroid/os/Bundle;)V

    :cond_c
    const/16 v2, 0x1b6

    const/16 v1, 0x18

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A01:I

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x1f7

    const/16 v1, 0x8

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0C:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x4b

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0D:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/KN;->A08(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2d(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/ads/redexgen/X/5J;->A01:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_21

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5J;->A0K:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Lo;->A02(Landroid/app/Activity;ILcom/facebook/ads/redexgen/X/YA;)V

    :cond_21
    return-void
.end method

.method public final onStop()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0M:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2e(Ljava/lang/String;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5J;->A0L:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5J;->A0L()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5J;->finish(I)V

    return-void
.end method
