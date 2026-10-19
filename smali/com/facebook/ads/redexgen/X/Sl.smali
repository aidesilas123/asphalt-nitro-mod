###### Class com.facebook.ads.redexgen.X.C1347Sl (com.facebook.ads.redexgen.X.Sl)
.class public final Lcom/facebook/ads/redexgen/X/Sl;
.super Lcom/facebook/ads/redexgen/X/Nv;
.source ""


# static fields
.field public static A0l:[B

.field public static A0m:[Ljava/lang/String;

.field public static final A0n:I

.field public static final A0o:I

.field public static final A0p:I

.field public static final A0q:I

.field public static final A0r:I

.field public static final A0s:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:Landroid/os/Handler;

.field public A0A:Landroid/view/View;

.field public A0B:Landroid/view/inputmethod/InputMethodManager;

.field public A0C:Landroid/widget/LinearLayout;

.field public A0D:Landroid/widget/LinearLayout;

.field public A0E:Landroid/widget/RelativeLayout;

.field public A0F:Landroid/widget/TextView;

.field public A0G:Lcom/facebook/ads/redexgen/X/aS;

.field public A0H:Lcom/facebook/ads/redexgen/X/Mw;

.field public A0I:Lcom/facebook/ads/redexgen/X/Mx;

.field public A0J:Lcom/facebook/ads/redexgen/X/TJ;

.field public A0K:Lcom/facebook/ads/redexgen/X/T3;

.field public A0L:Lcom/facebook/ads/redexgen/X/Nz;

.field public A0M:Lcom/facebook/ads/redexgen/X/OL;

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public A0T:Z

.field public A0U:Z

.field public A0V:Z

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public final A0b:Landroid/os/Handler;

.field public final A0c:Landroid/view/View;

.field public final A0d:Lcom/facebook/ads/redexgen/X/0g;

.field public final A0e:Lcom/facebook/ads/redexgen/X/In;

.field public final A0f:Lcom/facebook/ads/redexgen/X/Nf;

.field public final A0g:Lcom/facebook/ads/redexgen/X/Ng;

.field public final A0h:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0i:Ljava/lang/Runnable;

.field public final A0j:Ljava/lang/Runnable;

.field public final A0k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
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

    const-string v0, "E7d9V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HfiTPdnQE6JsOHdYoOA4lRNnbQ3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hoWzaZbN7yXesQFa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a3ZYa3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MYJwByDzw5bCUSkxw6qgTJ7WJbI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "X3l5ZIwYV4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sl;->A0W()V

    const/high16 v1, 0x41d00000    # 26.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sl;->A0q:I

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sl;->A0n:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sl;->A0s:I

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sl;->A0o:I

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sl;->A0p:I

    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sl;->A0r:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;)V
    .registers 23

    const/4 v6, 0x1

    move-object/from16 v4, p0

    move-object/from16 v15, p1

    invoke-direct {v4, v15, v6}, Lcom/facebook/ads/redexgen/X/Nv;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0X:Z

    const/4 v0, -0x1

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A02:I

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0Y:Z

    iput v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A03:I

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0U:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0W:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0V:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0Z:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0R:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0T:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0S:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0Q:Z

    iput v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A08:I

    iput v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0j:Ljava/lang/Runnable;

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0a:Z

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0P:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0k:Ljava/util/Set;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0b:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O8;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/O8;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0i:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A09:Landroid/os/Handler;

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v5

    const/16 v2, 0x19

    const/16 v1, 0xc

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/YA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0B:Landroid/view/inputmethod/InputMethodManager;

    iput-object v15, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A06()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0e:Lcom/facebook/ads/redexgen/X/In;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    iput-object v2, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    if-eqz v2, :cond_95

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    :cond_95
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A03()Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0c:Landroid/view/View;

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v7

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A06()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v8

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v14

    invoke-static/range {v7 .. v14}, Lcom/facebook/ads/redexgen/X/0h;->A01(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/1R;)Lcom/facebook/ads/redexgen/X/0g;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0d:Lcom/facebook/ads/redexgen/X/0g;

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    invoke-virtual {v15}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Np;->A00(Lcom/facebook/ads/redexgen/X/YA;Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/Sl;->setupLayoutConfiguration(Z)V

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Sl;->A0S()V

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Sl;->A0O()V

    new-instance v7, Lcom/facebook/ads/redexgen/X/So;

    invoke-direct {v7, v4}, Lcom/facebook/ads/redexgen/X/So;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v4, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/Sl;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/Sl;->A0V()V

    new-instance v9, Lcom/facebook/ads/redexgen/X/Sn;

    invoke-direct {v9, v4}, Lcom/facebook/ads/redexgen/X/Sn;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    iput-object v9, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0f:Lcom/facebook/ads/redexgen/X/Nf;

    const/4 v7, 0x0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A02()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/RX;

    if-eqz v0, :cond_11b

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A02()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/RX;

    :cond_11b
    new-instance v14, Lcom/facebook/ads/redexgen/X/Ng;

    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A09()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v18

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    aput-object v0, v1, v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0M:Lcom/facebook/ads/redexgen/X/OL;

    aput-object v0, v1, v6

    const/4 v0, 0x2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v1

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v20}, Lcom/facebook/ads/redexgen/X/Ng;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/RX;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Nf;[Landroid/view/View;)V

    iput-object v14, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0g:Lcom/facebook/ads/redexgen/X/Ng;

    if-eqz v7, :cond_169

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_169

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/RX;->getVideoImplView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1A(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OE;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/OE;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    :cond_163
    :goto_163
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0E:Landroid/widget/RelativeLayout;

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    return-void

    :cond_169
    if-nez v7, :cond_163

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    if-eqz v0, :cond_163

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_163

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A18(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OF;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/OF;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_163
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sl;-><init>(Lcom/facebook/ads/redexgen/X/Nz;)V

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0X:Z

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0X:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_66

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1C;->A0m()Z

    move-result v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Y:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0X:Z

    if-eqz v0, :cond_68

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1C;->A0E()I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A02:I

    if-nez v1, :cond_57

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0L()V

    :cond_26
    :goto_26
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A0J(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0a:Z

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/1C;->A0T()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    :goto_4b
    if-ge v4, v2, :cond_68

    aget-object v1, v3, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0k:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_57
    if-lez v1, :cond_26

    const/16 v0, 0x2710

    if-gt v1, v0, :cond_26

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0i:Ljava/lang/Runnable;

    int-to-long v0, v1

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    :cond_66
    const/4 v0, 0x0

    goto :goto_15

    :cond_68
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sl;)F
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sl;F)F
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A00:F

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Sl;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Sl;)I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:I

    return v1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Sl;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A08:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Sl;)I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A08:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A08:I

    return v1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Sl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A09:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Sl;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Sl;)Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0B:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/0g;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0d:Lcom/facebook/ads/redexgen/X/0g;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/In;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0e:Lcom/facebook/ads/redexgen/X/In;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/Mw;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/Mx;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0I:Lcom/facebook/ads/redexgen/X/Mx;

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/TJ;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/Nz;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/OL;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0M:Lcom/facebook/ads/redexgen/X/OL;

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/Jb;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Sl;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0j:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A0J(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A0l:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0K()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0R(Landroid/view/View;Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    div-int/lit8 v2, v0, 0x4

    :goto_21
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;I)V

    return-void

    :cond_38
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_21
.end method

.method private A0L()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0d:Lcom/facebook/ads/redexgen/X/0g;

    check-cast v0, Lcom/facebook/ads/redexgen/X/FH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0G()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0c(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0f(Z)V

    return-void
.end method

.method private A0M()V
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/O7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O7;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LP;->A00(Ljava/lang/Runnable;)V

    return-void
.end method

.method private A0N()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0j()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0P:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0P:Z

    const/16 v2, 0x25

    const/16 v1, 0x12

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0d(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method private A0O()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0T()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;)V

    return-void
.end method

.method private A0P()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0c:Landroid/view/View;

    if-eqz v0, :cond_2a

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    sget v1, Lcom/facebook/ads/redexgen/X/Nv;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nv;->A08:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v3, Lcom/facebook/ads/redexgen/X/Nv;->A07:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Sl;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/Nv;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Nv;->A07:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0c:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2a
    return-void
.end method

.method private A0Q()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    sget v0, Lcom/facebook/ads/redexgen/X/Sl;->A0r:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Jb;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    sget v0, Lcom/facebook/ads/redexgen/X/Sl;->A0p:I

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A06(II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->setTranslationY(F)V

    sget v0, Lcom/facebook/ads/redexgen/X/Sl;->A0q:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2d
    return-void
.end method

.method private A0R()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0O:Z

    if-nez v0, :cond_18

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ls;->A07()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setPageDetailsVisible(Z)V

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private A0S()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0j()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OG;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    const/4 v4, -0x1

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getColors()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1M;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v2, Lcom/facebook/ads/redexgen/X/Sl;->A0s:I

    div-int/lit8 v1, v2, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0h:Lcom/facebook/ads/redexgen/X/Jb;

    if-nez v0, :cond_f8

    move v0, v2

    :goto_7a
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    nop

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A04()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getColors()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sm;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/OL;

    invoke-direct {v2, v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1M;Lcom/facebook/ads/redexgen/X/NV;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0M:Lcom/facebook/ads/redexgen/X/OL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->setAutoClickTime(Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/Ls;)V

    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0M:Lcom/facebook/ads/redexgen/X/OL;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0M:Lcom/facebook/ads/redexgen/X/OL;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0U()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0K()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f7

    new-instance v1, Lcom/facebook/ads/redexgen/X/OH;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/OH;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    if-eqz v0, :cond_f7

    new-instance v1, Lcom/facebook/ads/redexgen/X/OI;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/OI;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ls;->setCTAClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f7
    return-void

    :cond_f8
    sget v0, Lcom/facebook/ads/redexgen/X/Sl;->A0q:I

    goto :goto_7a
.end method

.method private A0T()V
    .registers 5

    const/4 v1, -0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A18()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_52

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "mOqhFUC5R4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "x2rQdK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_52
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0U()V
    .registers 8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    if-eqz v0, :cond_9f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    div-int/lit8 v0, v0, 0x4

    :goto_8
    const/4 v6, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0M:Lcom/facebook/ads/redexgen/X/OL;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/OL;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Y:Z

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    if-eqz v0, :cond_8d

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_a5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "dOHlU7mObztTib9yLp7cTgFqT8sjFKca"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_9d

    const/4 v0, -0x2

    :goto_49
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v2, Lcom/facebook/ads/redexgen/X/Sl;->A0o:I

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    :goto_7a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/1M;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v0, v2, v4, v2, v4}, Lcom/facebook/ads/redexgen/X/T3;->setPadding(IIII)V

    :cond_88
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/T3;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8d
    return-void

    :cond_8e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A00()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    goto :goto_7a

    :cond_9d
    const/4 v0, -0x1

    goto :goto_49

    :cond_9f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    div-int/lit8 v0, v0, 0x5

    goto/16 :goto_8

    :cond_a5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0V()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0Q()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0P()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0R()V

    return-void
.end method

.method public static A0W()V
    .registers 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sl;->A0l:[B

    return-void

    :array_a
    .array-data 1
        0x7dt
        0xat
        0x5t
        0x0t
        0xat
        0x2t
        0x36t
        0x1at
        0x6t
        0x1ct
        0x1bt
        0xat
        0xct
        0xbt
        0x9t
        0x18t
        0x3et
        0xdt
        0x1bt
        0x24t
        0x9t
        0x5t
        0xbt
        0x4t
        0x18t
        0x6ct
        0x6bt
        0x75t
        0x70t
        0x71t
        0x5at
        0x68t
        0x60t
        0x71t
        0x6dt
        0x6at
        0x61t
        0xdt
        0xbt
        0x1dt
        0xat
        0x1bt
        0x14t
        0x11t
        0x1bt
        0x13t
        0x27t
        0x1et
        0x11t
        0x14t
        0xct
        0x1dt
        0xat
        0x1dt
        0x1ct
        0x66t
        0x78t
        0x7ft
        0x75t
        0x7et
        0x66t
        0x2t
        0x1bt
        0x1ct
        0x2at
        0x16t
        0x1t
        0x14t
        0x2at
        0x17t
        0x0t
        0x1t
        0x1t
        0x1at
        0x1bt
        0x7ft
        0x66t
        0x61t
        0x57t
        0x7ft
        0x6dt
        0x6at
        0x57t
        0x61t
        0x66t
        0x7bt
        0x7ct
        0x69t
        0x64t
        0x64t
        0x57t
        0x6at
        0x7dt
        0x7ct
        0x7ct
        0x67t
        0x66t
        0xat
    .end array-data
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0N()V

    return-void
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0T()V

    return-void
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/Sl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A0e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/Sl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A0c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/Sl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A0f(Z)V

    return-void
.end method

.method private A0c(Ljava/lang/String;)V
    .registers 19

    move-object/from16 v2, p0

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0Y:Z

    if-eqz v0, :cond_10

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0E:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    :cond_10
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A8U()V

    :cond_33
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IQ;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1fa

    :cond_4b
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/TJ;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/N5;)V

    :goto_56
    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0X:Z

    if-eqz v0, :cond_64

    new-instance v0, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/St;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/TJ;->setInterceptRedirectRequest(Lcom/facebook/ads/redexgen/X/N4;)V

    :cond_64
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0l()Z

    move-result v0

    if-eqz v0, :cond_8c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_8c

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    new-instance v4, Lcom/facebook/ads/redexgen/X/O5;

    invoke-direct {v4, v2}, Lcom/facebook/ads/redexgen/X/O5;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Ss;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nr;

    invoke-direct {v1, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Nr;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Nq;)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nr;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/TJ;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8c
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TJ;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Sl;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/TJ;)V

    const/4 v4, -0x1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v0, 0x3f666666    # 0.9f

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0Y:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0l()Z

    move-result v0

    if-eqz v0, :cond_134

    :cond_b3
    new-instance v7, Lcom/facebook/ads/redexgen/X/T3;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v8

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0K()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A00()I

    move-result v0

    if-ne v0, v1, :cond_1ea

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v10

    :goto_db
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A06()Z

    move-result v11

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A06()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v12

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A09()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v13

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0B()Lcom/facebook/ads/redexgen/X/Qb;

    move-result-object v14

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A07()Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v15

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v16

    invoke-direct/range {v7 .. v16}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1M;ZLcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V

    iput-object v7, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v6

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/T3;->setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;)V

    :cond_134
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0Y:Z

    if-eqz v0, :cond_1e2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    if-eqz v0, :cond_1e2

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Sl;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0E:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    invoke-virtual {v5, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Nv;->A00()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Na;->setRoundedCornersEnabled(Z)V

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Nv;->A0D()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Na;->setViewShowsOverMedia(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Sl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1d3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    :goto_188
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/1M;)V

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_199

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    sget v0, Lcom/facebook/ads/redexgen/X/Sl;->A0o:I

    invoke-virtual {v1, v0, v6, v0, v6}, Lcom/facebook/ads/redexgen/X/T3;->setPadding(IIII)V

    :cond_199
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O6;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/O6;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    const/4 v0, -0x2

    if-eqz v1, :cond_1a9

    const/4 v4, -0x2

    :cond_1a9
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/Sl;->A0o:I

    invoke-virtual {v5, v0, v6, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1cb
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/TJ;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1d3
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A00()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    goto :goto_188

    :cond_1e2
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0J:Lcom/facebook/ads/redexgen/X/TJ;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1cb

    :cond_1ea
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A00()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v10

    goto/16 :goto_db

    :cond_1fa
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-direct {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/TJ;-><init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/N5;)V

    goto/16 :goto_56
.end method

.method private A0d(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/NL;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NL;->A03(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/NL;->A02(Lcom/facebook/ads/redexgen/X/LN;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NL;->A05()Ljava/util/Map;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xc

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0e:Lcom/facebook/ads/redexgen/X/In;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Im;->A0J:Lcom/facebook/ads/redexgen/X/Im;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdEventManager()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/If;->A9V(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private A0e(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0s()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A18()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Q:Z

    if-eqz v0, :cond_21

    return-void

    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0i()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0N()V

    goto :goto_27

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Q:Z

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A0d(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private A0f(Z)V
    .registers 13

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0O:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0X:Z

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0i:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_ec

    iput v7, p0, Lcom/facebook/ads/redexgen/X/Sl;->A01:I

    iput v7, p0, Lcom/facebook/ads/redexgen/X/Sl;->A08:I

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0R:Z

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0S:Z

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0T:Z

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Q:Z

    :goto_1f
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sp;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/Sp;-><init>(Lcom/facebook/ads/redexgen/X/Sl;Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Sl;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v2, 0x61

    const/4 v1, 0x1

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eqz p1, :cond_4b

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0M:Lcom/facebook/ads/redexgen/X/OL;

    new-array v1, v10, [F

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/OL;->getY()F

    move-result v0

    aput v0, v1, v7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    aput v0, v1, v9

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    :cond_4b
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    new-array v1, v10, [F

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    aput v0, v1, v7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    if-eqz p1, :cond_5b

    div-int/lit8 v0, v0, 0x5

    :cond_5b
    int-to-float v0, v0

    aput v0, v1, v9

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v1, 0x1f4

    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    new-array v3, v10, [F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v0

    aput v0, v3, v7

    const/4 v0, 0x0

    aput v0, v3, v9

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v3, v10, [I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, v3, v7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    if-eqz p1, :cond_8b

    div-int/lit8 v0, v0, 0x5

    :cond_8b
    aput v0, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v0, Lcom/facebook/ads/redexgen/X/OB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OB;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v6, v0, v7

    aput-object v5, v0, v9

    aput-object v4, v0, v10

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v8, :cond_e0

    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v8, v4, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_f3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "3HcTndNMKO02itZ1YB9OuMlfPHE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "rUq8gYLqYGWwvrPw2H7I5hxcdAd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_e0
    new-instance v0, Lcom/facebook/ads/redexgen/X/OC;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/OC;-><init>(Lcom/facebook/ads/redexgen/X/Sl;Z)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_ec
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A09:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_f3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0g(Z)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->setupLayoutConfiguration(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    :cond_17
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0O:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "FZuJEB1DgE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ioAK5D"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v4, -0x1

    if-eqz v3, :cond_60

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    div-int/lit8 v0, v0, 0x5

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_4d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Sl;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0K()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0U()V

    return-void

    :cond_60
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_ab

    sget-object v5, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "pPe40HbQyCL07tY4s4c8j3Lf22g"

    const/4 v0, 0x6

    aput-object v1, v5, v0

    const-string v1, "FpZU0oL4KOaHbXLVjTxOhAl2PJv"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a2

    :goto_97
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0A:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/RX;

    if-nez v0, :cond_a2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_a2
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0O()V

    goto :goto_4d

    :cond_ab
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a2

    goto :goto_97

    :cond_b5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0h()Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0V:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "WvW0Ef6T7c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "9KXIlI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_3c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Z:Z

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0W:Z

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0i(Lcom/facebook/ads/redexgen/X/Sl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0O:Z

    return p0
.end method

.method public static synthetic A0j(Lcom/facebook/ads/redexgen/X/Sl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0U:Z

    return p0
.end method

.method public static synthetic A0k(Lcom/facebook/ads/redexgen/X/Sl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0T:Z

    return p0
.end method

.method public static synthetic A0l(Lcom/facebook/ads/redexgen/X/Sl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Z:Z

    return p0
.end method

.method public static synthetic A0m(Lcom/facebook/ads/redexgen/X/Sl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0S:Z

    return p0
.end method

.method public static synthetic A0n(Lcom/facebook/ads/redexgen/X/Sl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0R:Z

    return p0
.end method

.method public static synthetic A0o(Lcom/facebook/ads/redexgen/X/Sl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0U:Z

    return p1
.end method

.method public static synthetic A0p(Lcom/facebook/ads/redexgen/X/Sl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0T:Z

    return p1
.end method

.method public static synthetic A0q(Lcom/facebook/ads/redexgen/X/Sl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0Z:Z

    return p1
.end method

.method public static synthetic A0r(Lcom/facebook/ads/redexgen/X/Sl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0S:Z

    return p1
.end method

.method public static synthetic A0s(Lcom/facebook/ads/redexgen/X/Sl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0R:Z

    return p1
.end method

.method public static synthetic A0t(Lcom/facebook/ads/redexgen/X/Sl;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0P:Z

    return p1
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/TJ;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    nop

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mw;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Mw;-><init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/N6;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/TJ;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/N6;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    const/4 v0, -0x2

    const/4 v4, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sr;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mw;->setListener(Lcom/facebook/ads/redexgen/X/Mv;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O9;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mw;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0H:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0I:Lcom/facebook/ads/redexgen/X/Mx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    nop

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v3

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mx;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Mx;-><init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0I:Lcom/facebook/ads/redexgen/X/Mx;

    sget v0, Lcom/facebook/ads/redexgen/X/Sl;->A0n:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0I:Lcom/facebook/ads/redexgen/X/Mx;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v4, 0x0

    if-ne v1, v0, :cond_b6

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    if-nez v0, :cond_aa

    const/4 v0, 0x0

    :goto_1a
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A07:I

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0O:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A06:I

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v3

    const/16 v2, 0x37

    const/4 v1, 0x6

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/YA;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_69

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_79

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v6, Landroid/graphics/Point;->y:I

    :catch_69
    :cond_69
    :goto_69
    iget v0, v6, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_76

    iget v0, v6, Landroid/graphics/Point;->y:I

    :goto_6f
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A03:I

    return-void

    :cond_76
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    goto :goto_6f

    :cond_79
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_87

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_69

    :cond_87
    :try_start_87
    const-class v3, Landroid/view/Display;

    const/16 v2, 0xd

    const/16 v1, 0xc

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_a7
    iput v4, v6, Landroid/graphics/Point;->y:I

    goto :goto_69
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_aa} :catch_69

    :cond_aa
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ls;->getToolbarHeight()I

    move-result v0

    goto/16 :goto_1a

    :cond_b6
    const/4 v0, 0x0

    goto/16 :goto_f
.end method


# virtual methods
.method public final A0u()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0X:Z

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0i:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nv;->A0u()V

    return-void
.end method

.method public final A0v()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A18()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ls;->A07()Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setPageDetailsVisible(Z)V

    :cond_19
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0V:Z

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final A0w()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "MMiJw7TNUivh7iTB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "GEB80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setPageDetailsVisible(Z)V

    :cond_36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0V:Z

    return-void
.end method

.method public final A0x()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0W:Z

    return-void
.end method

.method public final A0y()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0W:Z

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final A0z(Lcom/facebook/ads/redexgen/X/1D;Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 11

    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Nv;->A0z(Lcom/facebook/ads/redexgen/X/1D;Ljava/lang/String;DLandroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A05()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_57

    :cond_17
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0N(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_30
    :goto_30
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_3d

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A06:I

    int-to-double v1, v0

    div-double/2addr v1, p3

    double-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A03:I

    :cond_3d
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0N:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_93

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_57
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0D:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_88

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "Tti1ERh3982vMPWOgwyCGNbTUdK6PILe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_30

    :cond_88
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "fnWnWSkw0ES4UX172ZpEF9XfJQ6oKenC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_30

    :cond_93
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "7Lq3s7aOnX5NGbRVe2GBF9HLZ2EE6fpE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_a1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A04:I

    :goto_9e
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A03:I

    return-void

    :cond_a1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A03:I

    goto :goto_9e
.end method

.method public final A10()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final A11(Z)Z
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A18()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Sl;->A0f(Z)V

    return v2

    :cond_c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0h()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0g:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Landroid/view/ViewGroup;)V

    return v2

    :cond_18
    return v1
.end method

.method public final synthetic A12()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A9t()V

    return-void
.end method

.method public final synthetic A13()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0a:Z

    if-eqz v0, :cond_21

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "pGBCzqXwIkLG48GrIEt64qcHW3Hm9O6f"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Sl;->A0f(Z)V

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A9s()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    const/16 v2, 0x3d

    const/16 v1, 0xe

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T3;->A09(Ljava/lang/String;)V

    :cond_3d
    return-void

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final synthetic A14()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    if-eqz v0, :cond_46

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0a:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_47

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "tCgjPTcwsN2cZ99v"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Ilqrg"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0f(Z)V

    :cond_2a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0L:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A9w()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0K:Lcom/facebook/ads/redexgen/X/T3;

    const/16 v2, 0x4b

    const/16 v1, 0x16

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T3;->A09(Ljava/lang/String;)V

    :cond_46
    return-void

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final synthetic A15()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0L()V

    return-void
.end method

.method public final synthetic A16(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0M()V

    return-void
.end method

.method public final synthetic A17(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/O4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O4;-><init>(Lcom/facebook/ads/redexgen/X/Sl;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LP;->A00(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final A18()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0O:Z

    return v0
.end method

.method public final synthetic A19(Ljava/lang/String;)Z
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_8

    return v6

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_12

    return v5

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_40

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "Sf20Awxc2HRh1lAKHxXJmSVrTf5ojylw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_18

    return v5

    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_46
    return v6
.end method

.method public getCloseButtonStyle()I
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A18()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    return v0

    :cond_8
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0W:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    return v0

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0G:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A0A()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sl;->A0V:Z

    if-eqz v0, :cond_47

    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_41

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sl;->A0m:[Ljava/lang/String;

    const-string v1, "NhzVRhgvHrOwM64xV2PIAOEbNcq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xEzMNY3CkayGfsMDFyAKLsf22gx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_47
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A18()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0g(Z)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0V()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A18()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sl;->setupLayoutConfiguration(Z)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sl;->A0T()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.O4 (com.facebook.ads.redexgen.X.O4)
.class public final synthetic Lcom/facebook/ads/redexgen/X/O4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A13()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.O5 (com.facebook.ads.redexgen.X.O5)
.class public final synthetic Lcom/facebook/ads/redexgen/X/O5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O5;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O5;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A16(Landroid/view/View;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.O6 (com.facebook.ads.redexgen.X.O6)
.class public final synthetic Lcom/facebook/ads/redexgen/X/O6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O6;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A17(Landroid/view/View;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.O7 (com.facebook.ads.redexgen.X.O7)
.class public final synthetic Lcom/facebook/ads/redexgen/X/O7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O7;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A14()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.O8 (com.facebook.ads.redexgen.X.O8)
.class public final synthetic Lcom/facebook/ads/redexgen/X/O8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A15()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C1354Ss (com.facebook.ads.redexgen.X.Ss)
.class public final synthetic Lcom/facebook/ads/redexgen/X/Ss;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nq;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    return-void
.end method


# virtual methods
.method public final AAq()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ss;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A12()V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C1355St (com.facebook.ads.redexgen.X.St)
.class public final synthetic Lcom/facebook/ads/redexgen/X/St;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/N4;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    return-void
.end method


# virtual methods
.method public final A91(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/St;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sl;->A19(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
