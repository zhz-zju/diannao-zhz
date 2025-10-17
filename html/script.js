document.addEventListener('DOMContentLoaded', function() {
    const numberInput = document.getElementById('numberInput');
    const generateBtn = document.getElementById('generateBtn');
    const blocksContainer = document.getElementById('blocksContainer');
    
    // 生成方块函数
    function generateBlocks(count) {
        for (let i = 0; i < count; i++) {
            const block = document.createElement('div');
            block.className = 'block';
            
            // 添加点击事件 - 点击时移除方块
            block.addEventListener('click', function() {
                block.remove();
            });
            
            blocksContainer.appendChild(block);
        }
    }
    
    // 生成按钮点击事件
    generateBtn.addEventListener('click', function() {
        const count = parseInt(numberInput.value);
        
        if (isNaN(count) || count < 1) {
            alert('请输入有效的数字');
            return;
        }
        
        generateBlocks(count);
        
        // 清空输入框
        numberInput.value = '';
    });
});