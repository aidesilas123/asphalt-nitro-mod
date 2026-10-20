###### Class com.tapjoy.internal.l1 (com.tapjoy.internal.l1)
.class public final enum Lcom/tapjoy/internal/l1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/tapjoy/internal/l1;

.field public static final enum b:Lcom/tapjoy/internal/l1;

.field public static final enum c:Lcom/tapjoy/internal/l1;

.field public static final enum d:Lcom/tapjoy/internal/l1;

.field public static final enum e:Lcom/tapjoy/internal/l1;

.field public static final enum f:Lcom/tapjoy/internal/l1;

.field public static final enum g:Lcom/tapjoy/internal/l1;

.field public static final enum h:Lcom/tapjoy/internal/l1;

.field public static final enum i:Lcom/tapjoy/internal/l1;

.field public static final enum j:Lcom/tapjoy/internal/l1;

.field public static final enum k:Lcom/tapjoy/internal/l1;

.field public static final enum l:Lcom/tapjoy/internal/l1;

.field public static final enum m:Lcom/tapjoy/internal/l1;

.field public static final enum n:Lcom/tapjoy/internal/l1;

.field public static final enum o:Lcom/tapjoy/internal/l1;

.field public static final synthetic p:[Lcom/tapjoy/internal/l1;


# instance fields
.field public final q:Lcom/tapjoy/internal/l1;

.field public final r:Lcom/tapjoy/internal/l1;


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    new-instance v0, Lcom/tapjoy/internal/l1;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/l1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/l1;->a:Lcom/tapjoy/internal/l1;

    new-instance v2, Lcom/tapjoy/internal/l1;

    const/4 v3, 0x1

    const-string v4, "PORTRAIT"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/internal/l1;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/internal/l1;->b:Lcom/tapjoy/internal/l1;

    new-instance v4, Lcom/tapjoy/internal/l1;

    const/4 v5, 0x2

    const-string v6, "LANDSCAPE"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/internal/l1;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/internal/l1;->c:Lcom/tapjoy/internal/l1;

    new-instance v6, Lcom/tapjoy/internal/l1;

    const/4 v7, 0x3

    const-string v8, "SQUARE"

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/internal/l1;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/tapjoy/internal/l1;

    const-string v9, "NATURAL_PORTRAIT"

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10, v2}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;)V

    sput-object v8, Lcom/tapjoy/internal/l1;->d:Lcom/tapjoy/internal/l1;

    new-instance v9, Lcom/tapjoy/internal/l1;

    const-string v11, "RIGHT_LANDSCAPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4, v8}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v9, Lcom/tapjoy/internal/l1;->e:Lcom/tapjoy/internal/l1;

    new-instance v11, Lcom/tapjoy/internal/l1;

    const-string v13, "REVERSE_PORTRAIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2, v8}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v11, Lcom/tapjoy/internal/l1;->f:Lcom/tapjoy/internal/l1;

    new-instance v13, Lcom/tapjoy/internal/l1;

    const-string v15, "LEFT_LANDSCAPE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4, v8}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v13, Lcom/tapjoy/internal/l1;->g:Lcom/tapjoy/internal/l1;

    new-instance v15, Lcom/tapjoy/internal/l1;

    const-string v14, "NATURAL_LANDSCAPE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;)V

    sput-object v15, Lcom/tapjoy/internal/l1;->h:Lcom/tapjoy/internal/l1;

    new-instance v14, Lcom/tapjoy/internal/l1;

    const-string v12, "RIGHT_PORTRAIT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v2, v15}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v14, Lcom/tapjoy/internal/l1;->i:Lcom/tapjoy/internal/l1;

    new-instance v12, Lcom/tapjoy/internal/l1;

    const-string v10, "REVERSE_LANDSCAPE"

    const/16 v7, 0xa

    invoke-direct {v12, v10, v7, v4, v15}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v12, Lcom/tapjoy/internal/l1;->j:Lcom/tapjoy/internal/l1;

    new-instance v10, Lcom/tapjoy/internal/l1;

    const-string v7, "LEFT_PORTRAIT"

    const/16 v5, 0xb

    invoke-direct {v10, v7, v5, v2, v15}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v10, Lcom/tapjoy/internal/l1;->k:Lcom/tapjoy/internal/l1;

    new-instance v7, Lcom/tapjoy/internal/l1;

    const-string v5, "NATURAL_SQUARE"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v6}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;)V

    sput-object v7, Lcom/tapjoy/internal/l1;->l:Lcom/tapjoy/internal/l1;

    new-instance v5, Lcom/tapjoy/internal/l1;

    const-string v3, "RIGHT_SQUARE"

    const/16 v1, 0xd

    invoke-direct {v5, v3, v1, v6, v7}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v5, Lcom/tapjoy/internal/l1;->m:Lcom/tapjoy/internal/l1;

    new-instance v3, Lcom/tapjoy/internal/l1;

    const-string v1, "REVERSE_SQUARE"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v1, v5, v6, v7}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v3, Lcom/tapjoy/internal/l1;->n:Lcom/tapjoy/internal/l1;

    new-instance v1, Lcom/tapjoy/internal/l1;

    const-string v5, "LEFT_SQUARE"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v1, v5, v3, v6, v7}, Lcom/tapjoy/internal/l1;-><init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V

    sput-object v1, Lcom/tapjoy/internal/l1;->o:Lcom/tapjoy/internal/l1;

    const/16 v5, 0x10

    new-array v5, v5, [Lcom/tapjoy/internal/l1;

    const/16 v16, 0x0

    aput-object v0, v5, v16

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v9, v5, v0

    const/4 v0, 0x6

    aput-object v11, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v15, v5, v0

    const/16 v0, 0x9

    aput-object v14, v5, v0

    const/16 v0, 0xa

    aput-object v12, v5, v0

    const/16 v0, 0xb

    aput-object v10, v5, v0

    const/16 v0, 0xc

    aput-object v7, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    aput-object v1, v5, v3

    sput-object v5, Lcom/tapjoy/internal/l1;->p:[Lcom/tapjoy/internal/l1;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p0, p0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/l1;->r:Lcom/tapjoy/internal/l1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    iput-object p0, p0, Lcom/tapjoy/internal/l1;->r:Lcom/tapjoy/internal/l1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/tapjoy/internal/l1;Lcom/tapjoy/internal/l1;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tapjoy/internal/l1;->q:Lcom/tapjoy/internal/l1;

    iput-object p4, p0, Lcom/tapjoy/internal/l1;->r:Lcom/tapjoy/internal/l1;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/l1;
    .registers 6

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0, v1}, Lcom/tapjoy/internal/k1;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    iget p0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ge p0, v1, :cond_35

    and-int/lit8 p0, v0, 0x3

    if-eq p0, v3, :cond_32

    if-eq p0, v2, :cond_2f

    if-eq p0, v4, :cond_2c

    sget-object p0, Lcom/tapjoy/internal/l1;->d:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_2c
    sget-object p0, Lcom/tapjoy/internal/l1;->k:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_2f
    sget-object p0, Lcom/tapjoy/internal/l1;->f:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_32
    sget-object p0, Lcom/tapjoy/internal/l1;->i:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_35
    if-le p0, v1, :cond_4b

    and-int/lit8 p0, v0, 0x3

    if-eq p0, v3, :cond_48

    if-eq p0, v2, :cond_45

    if-eq p0, v4, :cond_42

    sget-object p0, Lcom/tapjoy/internal/l1;->h:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_42
    sget-object p0, Lcom/tapjoy/internal/l1;->g:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_45
    sget-object p0, Lcom/tapjoy/internal/l1;->j:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_48
    sget-object p0, Lcom/tapjoy/internal/l1;->e:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_4b
    and-int/lit8 p0, v0, 0x3

    if-eq p0, v3, :cond_5c

    if-eq p0, v2, :cond_59

    if-eq p0, v4, :cond_56

    sget-object p0, Lcom/tapjoy/internal/l1;->l:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_56
    sget-object p0, Lcom/tapjoy/internal/l1;->o:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_59
    sget-object p0, Lcom/tapjoy/internal/l1;->n:Lcom/tapjoy/internal/l1;

    return-object p0

    :cond_5c
    sget-object p0, Lcom/tapjoy/internal/l1;->m:Lcom/tapjoy/internal/l1;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/l1;
    .registers 2

    const-class v0, Lcom/tapjoy/internal/l1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/l1;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/l1;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/l1;->p:[Lcom/tapjoy/internal/l1;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/l1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/l1;

    return-object v0
.end method
