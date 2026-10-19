###### Class com.mbridge.msdk.e.o (com.mbridge.msdk.e.o)
.class public final Lcom/mbridge/msdk/e/o;
.super Ljava/lang/Object;
.source "NetworkStackConfig.java"


# instance fields
.field private final a:Lcom/mbridge/msdk/e/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/e/a/a/a;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/e/o;->a:Lcom/mbridge/msdk/e/a/a/a;

    iput-object p2, p0, Lcom/mbridge/msdk/e/o;->b:Ljava/lang/String;

    iput p3, p0, Lcom/mbridge/msdk/e/o;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/e/o;->c:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/mbridge/msdk/e/a/a/a;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/e/o;->a:Lcom/mbridge/msdk/e/a/a/a;

    return-object v0
.end method
