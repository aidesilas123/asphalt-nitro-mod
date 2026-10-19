###### Class androidx.constraintlayout.core.state.b (androidx.constraintlayout.core.state.b)
.class public final synthetic Landroidx/constraintlayout/core/state/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/constraintlayout/core/state/b;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/b;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/b;->a:Landroidx/constraintlayout/core/state/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->lambda$getInterpolator$4(F)F

    move-result p1

    return p1
.end method
