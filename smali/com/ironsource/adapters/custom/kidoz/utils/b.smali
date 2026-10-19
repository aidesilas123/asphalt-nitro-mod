###### Class com.json.adapters.custom.kidoz.utils.b (com.ironsource.adapters.custom.kidoz.utils.b)
.class public final synthetic Lcom/ironsource/adapters/custom/kidoz/utils/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/b;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/b;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    invoke-virtual {v0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->c()V

    return-void
.end method
