###### Class com.json.ISNNativeAdViewHolder (com.ironsource.x6)
.class public final Lcom/ironsource/x6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/x6$a;,
        Lcom/ironsource/x6$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0002\t\u000bB_\u0012\u0006\u0010\u0012\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0019\u001a\u00020\n\u00a2\u0006\u0004\u00085\u00106J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u000f\u0010\u0006\u001a\u00020\u0005H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\t\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010\u0011\u001a\u00020\nH\u00c6\u0003Je\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\nH\u00c6\u0001J\t\u0010\u001b\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001cH\u00d6\u0001J\u0013\u0010 \u001a\u00020\u001f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u0012\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008\t\u0010$R$\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008\u0010\u0010(R$\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010%\u001a\u0004\u0008)\u0010\'\"\u0004\u0008\t\u0010(R$\u0010\u0015\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010%\u001a\u0004\u0008*\u0010\'\"\u0004\u0008\r\u0010(R$\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010%\u001a\u0004\u0008+\u0010\'\"\u0004\u0008\u000b\u0010(R$\u0010\u0017\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010%\u001a\u0004\u0008,\u0010\'\"\u0004\u0008\u000e\u0010(R$\u0010\u0018\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010%\u001a\u0004\u0008-\u0010\'\"\u0004\u0008\u000c\u0010(R\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010%\u001a\u0004\u0008.\u0010\'\"\u0004\u0008\u000f\u0010(R$\u00104\u001a\u0004\u0018\u00010/8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u00100\u001a\u0004\u00081\u00102\"\u0004\u0008\t\u00103\u00a8\u00067"
    }
    d2 = {
        "Lcom/ironsource/x6;",
        "",
        "",
        "r",
        "s",
        "Lorg/json/JSONObject;",
        "t",
        "()Lorg/json/JSONObject;",
        "Lcom/ironsource/t6;",
        "a",
        "Landroid/view/View;",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "containerView",
        "titleView",
        "advertiserView",
        "iconView",
        "bodyView",
        "mediaView",
        "ctaView",
        "privacyIconView",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Lcom/ironsource/t6;",
        "k",
        "()Lcom/ironsource/t6;",
        "(Lcom/ironsource/t6;)V",
        "Landroid/view/View;",
        "q",
        "()Landroid/view/View;",
        "(Landroid/view/View;)V",
        "i",
        "m",
        "j",
        "o",
        "l",
        "p",
        "Lcom/ironsource/x6$a;",
        "Lcom/ironsource/x6$a;",
        "n",
        "()Lcom/ironsource/x6$a;",
        "(Lcom/ironsource/x6$a;)V",
        "listener",
        "<init>",
        "(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/t6;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/ironsource/x6$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 10

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyIconView"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    iput-object p2, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    iput-object p6, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    iput-object p7, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    iput-object p8, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    invoke-direct {p0}, Lcom/ironsource/x6;->r()V

    invoke-direct {p0}, Lcom/ironsource/x6;->s()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ILkotlin/jvm/internal/n;)V
    .registers 22

    and-int/lit8 v0, p9, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v4, v1

    goto :goto_8

    :cond_7
    move-object v4, p2

    :goto_8
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_e

    move-object v5, v1

    goto :goto_f

    :cond_e
    move-object v5, p3

    :goto_f
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_15

    move-object v6, v1

    goto :goto_16

    :cond_15
    move-object v6, p4

    :goto_16
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1c

    move-object v7, v1

    goto :goto_1e

    :cond_1c
    move-object/from16 v7, p5

    :goto_1e
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_24

    move-object v8, v1

    goto :goto_26

    :cond_24
    move-object/from16 v8, p6

    :goto_26
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2c

    move-object v9, v1

    goto :goto_2e

    :cond_2c
    move-object/from16 v9, p7

    :goto_2e
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/ironsource/x6;-><init>(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/x6;Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Lcom/ironsource/x6;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/ironsource/x6;->b:Landroid/view/View;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/ironsource/x6;->c:Landroid/view/View;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/ironsource/x6;->d:Landroid/view/View;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/ironsource/x6;->e:Landroid/view/View;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/ironsource/x6;->f:Landroid/view/View;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lcom/ironsource/x6;->g:Landroid/view/View;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-object v1, v0, Lcom/ironsource/x6;->h:Landroid/view/View;

    goto :goto_45

    :cond_43
    move-object/from16 v1, p8

    :goto_45
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/ironsource/x6;->a(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/ironsource/x6;

    move-result-object v0

    return-object v0
.end method

.method private static final b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V
    .registers 4

    if-eqz p1, :cond_a

    new-instance v0, Lcom/ironsource/h8;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/h8;-><init>(Lcom/ironsource/x6;Lcom/ironsource/x6$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-void
.end method

.method private static final c(Lcom/ironsource/x6;Lcom/ironsource/x6$b;Landroid/view/View;)V
    .registers 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ironsource/x6;->i:Lcom/ironsource/x6$a;

    if-eqz p0, :cond_11

    invoke-interface {p0, p1}, Lcom/ironsource/x6$a;->a(Lcom/ironsource/x6$b;)V

    :cond_11
    return-void
.end method

.method public static synthetic m(Lcom/ironsource/x6;Lcom/ironsource/x6$b;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ironsource/x6;->c(Lcom/ironsource/x6;Lcom/ironsource/x6$b;Landroid/view/View;)V

    return-void
.end method

.method private final r()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    sget-object v1, Lcom/ironsource/x6$b;->b:Lcom/ironsource/x6$b;

    invoke-static {p0, v0, v1}, Lcom/ironsource/x6;->b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V

    iget-object v0, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    sget-object v1, Lcom/ironsource/x6$b;->c:Lcom/ironsource/x6$b;

    invoke-static {p0, v0, v1}, Lcom/ironsource/x6;->b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V

    iget-object v0, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    sget-object v1, Lcom/ironsource/x6$b;->d:Lcom/ironsource/x6$b;

    invoke-static {p0, v0, v1}, Lcom/ironsource/x6;->b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V

    iget-object v0, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    sget-object v1, Lcom/ironsource/x6$b;->e:Lcom/ironsource/x6$b;

    invoke-static {p0, v0, v1}, Lcom/ironsource/x6;->b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V

    iget-object v0, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    sget-object v1, Lcom/ironsource/x6$b;->f:Lcom/ironsource/x6$b;

    invoke-static {p0, v0, v1}, Lcom/ironsource/x6;->b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V

    iget-object v0, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    sget-object v1, Lcom/ironsource/x6$b;->g:Lcom/ironsource/x6$b;

    invoke-static {p0, v0, v1}, Lcom/ironsource/x6;->b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V

    iget-object v0, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    sget-object v1, Lcom/ironsource/x6$b;->h:Lcom/ironsource/x6$b;

    invoke-static {p0, v0, v1}, Lcom/ironsource/x6;->b(Lcom/ironsource/x6;Landroid/view/View;Lcom/ironsource/x6$b;)V

    return-void
.end method

.method private final s()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    new-instance v1, Lcom/ironsource/x6$c;

    invoke-direct {v1, p0}, Lcom/ironsource/x6$c;-><init>(Lcom/ironsource/x6;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/t6;->setListener$mediationsdk_release(Lcom/ironsource/t6$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/t6;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    return-object v0
.end method

.method public final a(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/ironsource/x6;
    .registers 19

    const-string v0, "containerView"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyIconView"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/x6;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/x6;-><init>(Lcom/ironsource/t6;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    return-void
.end method

.method public final a(Lcom/ironsource/t6;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    return-void
.end method

.method public final a(Lcom/ironsource/x6$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x6;->i:Lcom/ironsource/x6$a;

    return-void
.end method

.method public final b()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    return-void
.end method

.method public final c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    return-object v0
.end method

.method public final c(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    return-void
.end method

.method public final d()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    return-object v0
.end method

.method public final d(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    return-void
.end method

.method public final e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    return-object v0
.end method

.method public final e(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/ironsource/x6;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/x6;

    iget-object v1, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    iget-object v3, p1, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    iget-object v3, p1, Lcom/ironsource/x6;->b:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    iget-object v3, p1, Lcom/ironsource/x6;->c:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    iget-object v3, p1, Lcom/ironsource/x6;->d:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    iget-object v3, p1, Lcom/ironsource/x6;->e:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    iget-object v3, p1, Lcom/ironsource/x6;->f:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    iget-object v3, p1, Lcom/ironsource/x6;->g:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    iget-object p1, p1, Lcom/ironsource/x6;->h:Landroid/view/View;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    return v2

    :cond_64
    return v0
.end method

.method public final f()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    return-object v0
.end method

.method public final f(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    return-void
.end method

.method public final g()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    return-object v0
.end method

.method public final g(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    return-void
.end method

.method public final h()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    if-nez v1, :cond_29

    const/4 v1, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    if-nez v1, :cond_36

    const/4 v1, 0x0

    goto :goto_3a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    if-nez v1, :cond_43

    const/4 v1, 0x0

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_47
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    if-nez v1, :cond_4f

    goto :goto_53

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    return-object v0
.end method

.method public final j()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    return-object v0
.end method

.method public final k()Lcom/ironsource/t6;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    return-object v0
.end method

.method public final l()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    return-object v0
.end method

.method public final m()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    return-object v0
.end method

.method public final n()Lcom/ironsource/x6$a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->i:Lcom/ironsource/x6$a;

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    return-object v0
.end method

.method public final p()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    return-object v0
.end method

.method public final q()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    return-object v0
.end method

.method public final t()Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const-string v4, "title"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    const-string v4, "advertiser"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    const-string v4, "body"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    const-string v4, "cta"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    const-string v4, "media"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    if-eqz v1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    const-string v1, "icon"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "JSONObject()\n\t\t\t.put(\"ti\u2026\"icon\", iconView != null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISNNativeAdViewHolder(containerView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->a:Lcom/ironsource/t6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", advertiserView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bodyView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ctaView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyIconView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/x6;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
