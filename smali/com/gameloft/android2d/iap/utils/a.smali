###### Class com.gameloft.android2d.iap.utils.a (com.gameloft.android2d.iap.utils.a)
.class public Lcom/gameloft/android2d/iap/utils/a;
.super Ljava/lang/Object;
.source "Carrier.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/a;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/a;->a:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/a;->b:Ljava/lang/String;

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android2d/iap/utils/a;->c:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android2d/iap/utils/a;->c:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/a;->b:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/a;->a:Z

    return-void
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/a;->a:Z

    return v0
.end method
