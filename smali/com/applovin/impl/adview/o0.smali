###### Class com.applovin.impl.adview.o0 (com.applovin.impl.adview.o0)
.class public final synthetic Lcom/applovin/impl/adview/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/applovin/impl/adview/o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/impl/adview/o0;

    invoke-direct {v0}, Lcom/applovin/impl/adview/o0;-><init>()V

    sput-object v0, Lcom/applovin/impl/adview/o0;->a:Lcom/applovin/impl/adview/o0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/applovin/impl/adview/d;->d(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
