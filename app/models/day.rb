class Day < ApplicationRecord

    # 諸項目にたいしてあるべき内容を決める
    validates :date, presence: true
    validates :daytype, inclusion: { in: %w(workday holiday absence distant_past) }
    validates :health, inclusion: { in: (0..4) }
    validates :mood, inclusion: { in: (0..3) }
end
