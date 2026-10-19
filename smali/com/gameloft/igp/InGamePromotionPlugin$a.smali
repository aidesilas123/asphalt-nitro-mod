###### Class com.gameloft.igp.InGamePromotionPlugin.a (com.gameloft.igp.InGamePromotionPlugin$a)
.class public Lcom/gameloft/igp/InGamePromotionPlugin$a;
.super Ljava/lang/Object;
.source "InGamePromotionPlugin.java"

# interfaces
.implements Lcom/gameloft/igp/IGPFreemiumActivity$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/InGamePromotionPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/gameloft/igp/InGamePromotionPlugin;


# direct methods
.method public constructor <init>(Lcom/gameloft/igp/InGamePromotionPlugin;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->d:Lcom/gameloft/igp/InGamePromotionPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->b:I

    iput-object p1, p0, Lcom/gameloft/igp/InGamePromotionPlugin$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
