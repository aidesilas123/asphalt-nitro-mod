###### Class androidx.constraintlayout.core.state.h (androidx.constraintlayout.core.state.h)
.class public final synthetic Landroidx/constraintlayout/core/state/h;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/constraintlayout/core/state/h;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/h;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/h;->a:Landroidx/constraintlayout/core/state/h;

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

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->lambda$getInterpolator$6(F)F

    move-result p1

    return p1
.end method
