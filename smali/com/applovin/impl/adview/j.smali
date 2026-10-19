###### Class com.applovin.impl.adview.j (com.applovin.impl.adview.j)
.class public abstract Lcom/applovin/impl/adview/j;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/j$a;
    }
.end annotation


# instance fields
.field protected final E:Landroid/content/Context;

.field protected ahA:F


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/impl/adview/j;->ahA:F

    iput-object p1, p0, Lcom/applovin/impl/adview/j;->E:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/applovin/impl/adview/j$a;Landroid/content/Context;)Lcom/applovin/impl/adview/j;
    .registers 3

    sget-object v0, Lcom/applovin/impl/adview/j$a;->ahD:Lcom/applovin/impl/adview/j$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Lcom/applovin/impl/adview/r;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/r;-><init>(Landroid/content/Context;)V

    goto :goto_2f

    :cond_e
    sget-object v0, Lcom/applovin/impl/adview/j$a;->ahC:Lcom/applovin/impl/adview/j$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Lcom/applovin/impl/adview/s;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/s;-><init>(Landroid/content/Context;)V

    goto :goto_2f

    :cond_1c
    sget-object v0, Lcom/applovin/impl/adview/j$a;->ahE:Lcom/applovin/impl/adview/j$a;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, Lcom/applovin/impl/adview/t;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/t;-><init>(Landroid/content/Context;)V

    goto :goto_2f

    :cond_2a
    new-instance p0, Lcom/applovin/impl/adview/z;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/z;-><init>(Landroid/content/Context;)V

    :goto_2f
    return-object p0
.end method


# virtual methods
.method public fZ(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/j;->setViewScale(F)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/applovin/impl/adview/j;->getSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/applovin/impl/adview/j;->getSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1b
    return-void
.end method

.method public getSize()F
    .registers 3

    iget v0, p0, Lcom/applovin/impl/adview/j;->ahA:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public abstract getStyle()Lcom/applovin/impl/adview/j$a;
.end method

.method public setViewScale(F)V
    .registers 2

    iput p1, p0, Lcom/applovin/impl/adview/j;->ahA:F

    return-void
.end method

###### Class com.applovin.impl.adview.j.a (com.applovin.impl.adview.j$a)
.class public final enum Lcom/applovin/impl/adview/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/adview/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ahB:Lcom/applovin/impl/adview/j$a;

.field public static final enum ahC:Lcom/applovin/impl/adview/j$a;

.field public static final enum ahD:Lcom/applovin/impl/adview/j$a;

.field public static final enum ahE:Lcom/applovin/impl/adview/j$a;

.field private static final synthetic ahG:[Lcom/applovin/impl/adview/j$a;


# instance fields
.field private final ahF:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/applovin/impl/adview/j$a;

    const-string v1, "WHITE_ON_BLACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/applovin/impl/adview/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/adview/j$a;->ahB:Lcom/applovin/impl/adview/j$a;

    new-instance v1, Lcom/applovin/impl/adview/j$a;

    const-string v3, "WHITE_ON_TRANSPARENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/applovin/impl/adview/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/applovin/impl/adview/j$a;->ahC:Lcom/applovin/impl/adview/j$a;

    new-instance v3, Lcom/applovin/impl/adview/j$a;

    const-string v5, "INVISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/applovin/impl/adview/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/applovin/impl/adview/j$a;->ahD:Lcom/applovin/impl/adview/j$a;

    new-instance v5, Lcom/applovin/impl/adview/j$a;

    const-string v7, "TRANSPARENT_SKIP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/applovin/impl/adview/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/applovin/impl/adview/j$a;->ahE:Lcom/applovin/impl/adview/j$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/applovin/impl/adview/j$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/applovin/impl/adview/j$a;->ahG:[Lcom/applovin/impl/adview/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/applovin/impl/adview/j$a;->ahF:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/adview/j$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/adview/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/adview/j$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/adview/j$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/adview/j$a;->ahG:[Lcom/applovin/impl/adview/j$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/adview/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/adview/j$a;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/adview/j$a;->ahF:I

    return v0
.end method
