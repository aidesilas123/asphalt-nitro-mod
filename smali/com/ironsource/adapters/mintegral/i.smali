###### Class com.json.adapters.mintegral.i (com.ironsource.adapters.mintegral.i)
.class public final synthetic Lcom/ironsource/adapters/mintegral/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/adapters/mintegral/i;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/adapters/mintegral/i;->a:Z

    invoke-static {v0}, Lcom/ironsource/adapters/mintegral/MintegralAdapter;->i(Z)V

    return-void
.end method
