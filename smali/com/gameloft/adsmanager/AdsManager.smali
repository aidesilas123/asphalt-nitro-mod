###### Class com.gameloft.adsmanager.AdsManager (com.gameloft.adsmanager.AdsManager)
.class public Lcom/gameloft/adsmanager/AdsManager;
.super Ljava/lang/Object;
.source "AdsManager.java"


# static fields
.field static mainActivity:Landroid/app/Activity;

.field static parentViewGroup:Landroid/view/ViewGroup;

.field static relativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    sput-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    sput-object p0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    const-string p0, "AdsManager.java"

    const-string p1, "Init"

    const-string v0, "MainAcitivity and ParentViewGroup set"

    invoke-static {p0, p1, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance p1, Lcom/gameloft/adsmanager/AdsManager$1;

    invoke-direct {p1}, Lcom/gameloft/adsmanager/AdsManager$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/gameloft/adsmanager/JavaUtils;->Init()V

    return-void
.end method

.method public static SetActivity(Landroid/app/Activity;)V
    .registers 1

    sput-object p0, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/gameloft/adsmanager/JavaUtils;->Init()V

    return-void
.end method

.method public static SetView(Landroid/view/ViewGroup;)V
    .registers 2

    sput-object p0, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance v0, Lcom/gameloft/adsmanager/AdsManager$2;

    invoke-direct {v0}, Lcom/gameloft/adsmanager/AdsManager$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
