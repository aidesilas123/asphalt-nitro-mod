###### Class com.tapjoy.d (com.tapjoy.d)
.class public final synthetic Lcom/tapjoy/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# static fields
.field public static final synthetic a:Lcom/tapjoy/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/d;

    invoke-direct {v0}, Lcom/tapjoy/d;-><init>()V

    sput-object v0, Lcom/tapjoy/d;->a:Lcom/tapjoy/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    invoke-static {p1, p2}, Lcom/tapjoy/TJActivity;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
