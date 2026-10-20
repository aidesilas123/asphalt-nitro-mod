###### Class com.mbridge.msdk.dycreator.b.a (com.mbridge.msdk.dycreator.b.a)
.class public final Lcom/mbridge/msdk/dycreator/b/a;
.super Ljava/lang/Object;
.source "DyError.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/dycreator/b/a;->a:I

    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/dycreator/b/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/b/b;->a()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/b/a;->a:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/dycreator/b/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/b/a;->b:Ljava/lang/String;

    :cond_11
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DyError{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/dycreator/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
