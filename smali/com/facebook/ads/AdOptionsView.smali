###### Class com.facebook.ads.AdOptionsView (com.facebook.ads.AdOptionsView)
.class public Lcom/facebook/ads/AdOptionsView;
.super Lcom/facebook/ads/internal/api/AdComponentFrameLayout;
.source "AdOptionsView.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/AdOptionsView$Orientation;
    }
.end annotation


# instance fields
.field private final mAdOptionsViewApi:Lcom/facebook/ads/internal/api/AdOptionsViewApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V
    .registers 5
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdOptionsView(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView;)Lcom/facebook/ads/internal/api/AdOptionsViewApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/AdOptionsView;->mAdOptionsViewApi:Lcom/facebook/ads/internal/api/AdOptionsViewApi;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->attachAdComponentViewApi(Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;I)V
    .registers 13
    .param p3    # Lcom/facebook/ads/NativeAdLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createAdOptionsView(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)Lcom/facebook/ads/internal/api/AdOptionsViewApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/AdOptionsView;->mAdOptionsViewApi:Lcom/facebook/ads/internal/api/AdOptionsViewApi;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->attachAdComponentViewApi(Lcom/facebook/ads/internal/api/AdComponentViewApiProvider;)V

    return-void
.end method


# virtual methods
.method public setIconColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->mAdOptionsViewApi:Lcom/facebook/ads/internal/api/AdOptionsViewApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdOptionsViewApi;->setIconColor(I)V

    return-void
.end method

.method public setIconSizeDp(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->mAdOptionsViewApi:Lcom/facebook/ads/internal/api/AdOptionsViewApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdOptionsViewApi;->setIconSizeDp(I)V

    return-void
.end method

.method public setSingleIcon(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/AdOptionsView;->mAdOptionsViewApi:Lcom/facebook/ads/internal/api/AdOptionsViewApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdOptionsViewApi;->setSingleIcon(Z)V

    return-void
.end method

###### Class com.facebook.ads.AdOptionsView.Orientation (com.facebook.ads.AdOptionsView$Orientation)
.class public final enum Lcom/facebook/ads/AdOptionsView$Orientation;
.super Ljava/lang/Enum;
.source "AdOptionsView.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdOptionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/AdOptionsView$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/AdOptionsView$Orientation;

.field public static final enum HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

.field public static final enum VERTICAL:Lcom/facebook/ads/AdOptionsView$Orientation;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/facebook/ads/AdOptionsView$Orientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdOptionsView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    new-instance v1, Lcom/facebook/ads/AdOptionsView$Orientation;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/ads/AdOptionsView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/ads/AdOptionsView$Orientation;->VERTICAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/facebook/ads/AdOptionsView$Orientation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/facebook/ads/AdOptionsView$Orientation;->$VALUES:[Lcom/facebook/ads/AdOptionsView$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdOptionsView$Orientation;
    .registers 2

    const-class v0, Lcom/facebook/ads/AdOptionsView$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/AdOptionsView$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/AdOptionsView$Orientation;
    .registers 1

    sget-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->$VALUES:[Lcom/facebook/ads/AdOptionsView$Orientation;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdOptionsView$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdOptionsView$Orientation;

    return-object v0
.end method
