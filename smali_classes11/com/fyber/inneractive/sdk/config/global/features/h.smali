###### Class com.fyber.inneractive.sdk.config.global.features.h (com.fyber.inneractive.sdk.config.global.features.h)
.class public Lcom/fyber/inneractive/sdk/config/global/features/h;
.super Lcom/fyber/inneractive/sdk/config/global/features/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "cta_button_hand_animation"

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/fyber/inneractive/sdk/config/global/features/g;
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/config/global/features/h;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/config/global/features/h;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Lcom/fyber/inneractive/sdk/config/global/features/g;)V

    return-object v0
.end method
