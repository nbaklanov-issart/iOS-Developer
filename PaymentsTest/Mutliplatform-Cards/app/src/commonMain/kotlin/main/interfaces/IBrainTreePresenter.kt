package main.interfaces

import main.model.BrainTreeToken

interface IBrainTreePresenter : IBasePresenter, ILoadingPresenter {
    fun updateUserToken(token:BrainTreeToken)
}