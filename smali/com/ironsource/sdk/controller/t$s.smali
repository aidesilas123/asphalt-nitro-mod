###### Class com.ironsource.sdk.controller.t.s (com.ironsource.sdk.controller.t$s)
.class Lcom/ironsource/sdk/controller/t$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# instance fields
.field a:Lcom/ironsource/h6$e;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/h6$e;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$s;->a:Lcom/ironsource/h6$e;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$s;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$s;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Lcom/ironsource/h6$e;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$s;->a:Lcom/ironsource/h6$e;

    return-object v0
.end method
