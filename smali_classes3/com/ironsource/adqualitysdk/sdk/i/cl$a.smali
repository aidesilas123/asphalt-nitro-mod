###### Class com.ironsource.adqualitysdk.sdk.i.cl.a (com.ironsource.adqualitysdk.sdk.i.cl$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cl$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/cl$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cl$d;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/cl$d;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ｋ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
