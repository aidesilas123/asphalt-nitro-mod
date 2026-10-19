###### Class com.google.firebase.components.l (com.google.firebase.components.l)
.class public final synthetic Lcom/google/firebase/components/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# static fields
.field public static final synthetic a:Lcom/google/firebase/components/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/components/l;

    invoke-direct {v0}, Lcom/google/firebase/components/l;-><init>()V

    sput-object v0, Lcom/google/firebase/components/l;->a:Lcom/google/firebase/components/l;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/inject/Provider;)V
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/components/OptionalProvider;->b(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
