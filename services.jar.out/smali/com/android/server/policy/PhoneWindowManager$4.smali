.class Lcom/android/server/policy/PhoneWindowManager$4;
.super Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;I)V
    .locals 3
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "position"    # Lcom/android/internal/util/gesture/EdgeGesturePosition;
    .param p4, "flags"    # I

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1006
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->TOP:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1017
    .end local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 1018
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap14(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$4;->dropEventsUntilLift()Z

    .line 1020
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->-set0(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 1003
    :goto_1
    return-void

    .line 1008
    .restart local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->BOTTOM:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v1, :cond_2

    .line 1009
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1010
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->LEFT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_3

    .line 1011
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v1, :cond_4

    .line 1013
    :cond_3
    sget-object v1, Lcom/android/internal/util/gesture/EdgeGesturePosition;->RIGHT:Lcom/android/internal/util/gesture/EdgeGesturePosition;

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1011
    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarLeftInLandscape:Z

    .line 1010
    if-eqz v1, :cond_3

    .line 1012
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .local v0, "target":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 1022
    .end local v0    # "target":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$4;->restoreListenerState()V

    goto :goto_1
.end method
