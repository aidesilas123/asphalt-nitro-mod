###### Class com.applovin.impl.sdk.utils.g0 (com.applovin.impl.sdk.utils.g0)
.class public final synthetic Lcom/applovin/impl/sdk/utils/g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/n;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/n;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/g0;->a:Lcom/applovin/impl/sdk/n;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/g0;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/applovin/impl/sdk/utils/g0;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/g0;->a:Lcom/applovin/impl/sdk/n;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/g0;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/g0;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/l;->h(Lcom/applovin/impl/sdk/n;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method
