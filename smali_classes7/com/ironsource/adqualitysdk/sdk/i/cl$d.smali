###### Class com.ironsource.adqualitysdk.sdk.i.cl.d (com.ironsource.adqualitysdk.sdk.i.cl$d)
.class abstract Lcom/ironsource/adqualitysdk/sdk/i/cl$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cl$d;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cl$d;->a:Ljava/lang/Class;

    return-object v0
.end method

.method abstract ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
.end method
